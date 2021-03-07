import random
from constants import MAX_HORDE_DISTANCE

class Castle:
    def __init__(self, player_index):
        self.owner = player_index
        self.infected = False
        self.horde_distance = random.randint(1, MAX_HORDE_DISTANCE)
