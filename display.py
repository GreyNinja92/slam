import pygame
from pygame.locals import DOUBLEBUF
import sys

class Display(object):
    def __init__(self, W, H):
        pygame.init()
        self.screen = pygame.display.set_mode((W, H), DOUBLEBUF)
        self.surface = pygame.Surface(self.screen.get_size()).convert()

    def paint(self, img):

        for event in pygame.event.get():
            pass

        #Draw
        pygame.surfarray.blit_array(self.surface, img.swapaxes(0,1)[:, :, [0,1,2]])
        self.screen.blit(self.surface, (0,0))

        #Blit
        pygame.display.flip()
