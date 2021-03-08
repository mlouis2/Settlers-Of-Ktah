import random
from collections import Counter
from constants import Resource, MAX_BOUNTY, MAX_HORDE_DISTANCE


class Castle:
    def __init__(self, player_index):
        self.owner = player_index
        self.infected = False
        self.horde_distance = random.randint(1, MAX_HORDE_DISTANCE)

    def infect(self):
        self.infected = True
        self.horde_distance = 0

    def uninfect(self):
        self.infected = False
        self.horde_distance = 1

class Outpost:
    def __init__(self, index):
        self.owner = index
        self.resources = self.setupResources()
        self.is_apothecary = False

    def setupResources(self):
        # 1/3 chance that outpost only touches two tiles
        outpost_touched_tiles = 3
        touched_tiles_likelihood = random.randint(0, 3)
        if touched_tiles_likelihood == 0:
            outpost_touched_tiles = 2

        # For each tile, determine a random amount of resources that the outpost will collect.
        resources = Counter()
        for _ in range(0, outpost_touched_tiles):
            tile_resource = random.choice(list(Resource)).name
            while tile_resource == Resource.ZOMBIE:
                tile_resource = random.choice(list(Resource)).name
            resource_amount = random.randint(1, MAX_BOUNTY)
            resources[tile_resource] = resources[tile_resource] + resource_amount

        return resources


class Road:
    def __init__(self, player_index):
        self.is_barricade = False
        self.round_count = 0

    def upgrade(self):
        self.is_barricade = True
        self.round_count = 3

    def update(self):
        if self.is_barricade:
            self.round_count = self.round_count - 1
            if self.round_count == 0:
                self.is_barricade = False
