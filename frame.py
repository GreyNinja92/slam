import cv2
import numpy as np

from skimage.measure import ransac
from skimage.transform import FundamentalMatrixTransform
from skimage.transform import EssentialMatrixTransform

def fixShape(x):
  return np.concatenate([x, np.ones((x.shape[0], 1))], axis=1)

def findRelativeCameraPose(E):
  W = np.mat([[0,-1,0],[1,0,0],[0,0,1]],dtype=float)


  #U is used for translation vector & Vt is used for Rotation Matrix
  U,d,Vt = np.linalg.svd(E)

  #Determinant of the Translation Vector can't be zero
  assert np.linalg.det(U) > 0
  if np.linalg.det(Vt) < 0:
    Vt *= -1.0
  R = np.dot(np.dot(U, W), Vt)
  if np.sum(R.diagonal()) < 0:
    R = np.dot(np.dot(U, W.T), Vt)
  t = U[:, 2]
  ret = np.eye(4)
  ret[:3, :3] = R
  ret[:3, 3] = t
  return ret

def extract(img):
  orb = cv2.ORB_create()
  # detection
  pts = cv2.goodFeaturesToTrack(np.mean(img, axis=2).astype(np.uint8), 3000, qualityLevel=0.01, minDistance=3)

  # extraction
  kps = [cv2.KeyPoint(x=f[0][0], y=f[0][1], _size=20) for f in pts]
  kps, des = orb.compute(img, kps)

  # return pts and des
  return np.array([(kp.pt[0], kp.pt[1]) for kp in kps]), des

def normalize(Kinv, pts):
  return np.dot(Kinv, fixShape(pts).T).T[:, 0:2]

def denormalize(K, pt):
  ret = np.dot(K, np.array([pt[0], pt[1], 1.0]))
  ret /= ret[2]
  return int(round(ret[0])), int(round(ret[1]))

def match_frames(f1, f2):
  bf = cv2.BFMatcher(cv2.NORM_HAMMING)
  matches = bf.knnMatch(f1.des, f2.des, k=2)

  # Lowe's ratio test
  ret = []
  idx1,idx2 = [], []

  for m,n in matches:
    if m.distance < 0.75*n.distance:
      # Store the indices
      idx1.append(m.queryIdx)
      idx2.append(m.trainIdx)

      p1 = f1.pts[m.queryIdx]
      p2 = f2.pts[m.trainIdx]
      ret.append((p1, p2))
  #Min Samples must be 8 for Essential Matrix Transform
  assert len(ret) >= 8
  ret = np.array(ret)
  idx1 = np.array(idx1)
  idx2 = np.array(idx2)

  # filter projections by removing outliers
  model, inliers = ransac((ret[:, 0], ret[:, 1]),
                          EssentialMatrixTransform,
                          min_samples=8,
                          residual_threshold=0.005,
                          max_trials=200)

  # find Rotation Matrix and Translation Vector for the point
  Rt = findRelativeCameraPose(model.params)

  # return previous frame's keypoints, new frame's keypoints, translation vector concatenated with rotation matrix
  return idx1[inliers], idx2[inliers], Rt

class Frame():
  def __init__(self, mapOfTheEnvironment, img, K):
    self.K = K
    self.Kinv = np.linalg.inv(self.K)
    self.pose = np.eye(4)

    pts, self.des = extract(img)
    self.pts = normalize(self.Kinv, pts)

    self.id = len(mapOfTheEnvironment.frames)
    mapOfTheEnvironment.frames.append(self)


