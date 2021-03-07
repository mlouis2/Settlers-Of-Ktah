import random
from collections import Counter
import constants

class Outpost:
    def __init__(self, index):
        self.owner = index
        self.resources = self.setupResources()
        self.isApothecary = False

    def setupResources(self):
        # 1/3 chance that outpost only touches two tiles
        outpost_touched_tiles = 3
        touched_tiles_likelihood = random.randint(0, 3)
        if touched_tiles_likelihood == 0:
            outpost_touched_tiles = 2

        # For each tile, determine a random amount of resources that the outpost will collect.
        resources = Counter()
        for _ in range(0, outpost_touched_tiles):
            tile_resource = random.choice(list(constants.Resource)).name
            resource_amount = random.randint(1, constants.MAX_BOUNTY)
            resources[tile_resource] = resources[tile_resource] + resource_amount

        return resources
