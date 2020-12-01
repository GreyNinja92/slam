#!/usr/bin/env python3
import time
import cv2
from display import Display
from frame import Frame, denormalize, match_frames
import numpy as np

import OpenGL.GL as gl
import pypangolin as pangolin

# camera intrinsics
W, H = 1920//2, 1080//2

F = 270
K = np.array([[F,0,W//2],[0,F,H//2],[0,0,1]])

w = 1024
h = 768

from multiprocessing import Process, Queue

class Map(object):
  def __init__(self):
    self.frames = []
    self.points = []
    self.state = None
    self.q = Queue()

    p = Process(target=self.viewer_thread, args=(self.q,))
    p.daemon = True
    p.start()

  def viewer_thread(self, q):
    self.viewer_init()
    while 1:
      self.viewer_refresh(q)

  def viewer_init(self):
    pangolin.CreateWindowAndBind('Main', 640, 480)
    gl.glEnable(gl.GL_DEPTH_TEST)

    self.scam = pangolin.OpenGlRenderState(
        pangolin.ProjectionMatrix(w, h, 420, 420, w//2, h//2, 0.2, 10000),
        pangolin.ModelViewLookAt(0, -10, -8,
                                 0, 0, 0,
                                 0, -1, 0))

    self.handler = pangolin.Handler3D(self.scam)

    # Create Interactive View in window
    self.dcam = pangolin.CreateDisplay()
    self.dcam.SetBounds(pangolin.Attach(0.0), pangolin.Attach(1.0), pangolin.Attach(0.0),        pangolin.Attach(1.0), w/h)
    self.dcam.SetHandler(self.handler)

  def viewer_refresh(self, q):
    if self.state is None or not q.empty():
      self.state = q.get()

    # turn state into points
    ppts = np.array([d[:3, 3] for d in self.state[0]])
    spts = np.array(self.state[1])

    gl.glClear(gl.GL_COLOR_BUFFER_BIT | gl.GL_DEPTH_BUFFER_BIT)
    gl.glClearColor(0, 0, 0, 0)
    self.dcam.Activate(self.scam)

    gl.glPointSize(10)
    gl.glColor3f(0.0, 1.0, 0.0)

    pangolin.DrawPoints(ppts)

    gl.glPointSize(2)
    gl.glColor3f(1.0, 1.0, 1.0)
    pangolin.DrawPoints(spts)

    pangolin.FinishFrame()

  def display(self):
    poses, pts = [], []
    for f in self.frames:
      poses.append(f.pose)
    for p in self.points:
      pts.append(p.pt)
    self.q.put((poses, pts))

# main classes
mapp = Map()

disp = Display(W,H)

class Point(object):
  # A Point is a 3-D point in the world
  # Each Point is observed in multiple Frames

  def __init__(self, mapp, loc):
    self.pt = loc
    self.frames = []
    self.idxs = []

    self.id = len(mapp.points)
    mapp.points.append(self)

  def add_observation(self, frame, idx):
    self.frames.append(frame)
    self.idxs.append(idx)

#Linear Triangulation Function
def triangulate(pose1, pose2, pts1, pts2):
    ret = np.zeros((pts1.shape[0], 4))
    pose1 = np.linalg.inv(pose1)
    pose2 = np.linalg.inv(pose2)
    for i, p in enumerate(zip(pts1, pts2)):
        A = np.zeros((4,4))
        A[0] = p[0][0] * pose1[2] - pose1[0]
        A[1] = p[0][1] * pose1[2] - pose1[1]
        A[2] = p[1][0] * pose2[2] - pose2[0]
        A[3] = p[1][1] * pose2[2] - pose2[1]
        _, _, vt = np.linalg.svd(A)
        ret[i] = vt[3]
    return ret

def process_frame(img):
  img = cv2.resize(img, (W,H))
  frame = Frame(mapp, img, K)
  if frame.id == 0:
    return

  f1 = mapp.frames[-1]
  f2 = mapp.frames[-2]

  idx1, idx2, Rt = match_frames(f1, f2)
  f1.pose = np.dot(Rt, f2.pose)

  # Find 3-D Coordinates
  pts4d = triangulate(f1.pose, f2.pose, f1.pts[idx1], f2.pts[idx2])
  pts4d /= pts4d[:, 3:]

  print(pts4d)
  good_pts4d = (np.abs(pts4d[:, 3]) > 0.005) & (pts4d[:, 2] > 0)


  for i,p in enumerate(pts4d):
    if not good_pts4d[i]:
        continue
    pt = Point(mapp, p)
    pt.add_observation(f1, idx1[i])
    pt.add_observation(f2, idx2[i])

  print("{} matches".format(len(f1.pts[idx1])))

  for pt1, pt2 in zip(f1.pts[idx1], f2.pts[idx2]):
    u1, v1 = denormalize(K, pt1)
    u2, v2 = denormalize(K, pt2)
    cv2.circle(img, (u1, v1), color=(0,255,0), radius=3)
    cv2.line(img, (u1, v1), (u2, v2), color=(255,0,0))

  disp.paint(img)
  mapp.display()

if __name__ == "__main__":
  cap = cv2.VideoCapture("test.mp4")

  while cap.isOpened():
    ret, frame = cap.read()
    if ret == True:
      process_frame(frame)
    else:
      break

