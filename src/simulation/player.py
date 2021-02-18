import random
from collections import Counter 

RESOURCES = ["Wood", "Wheat", "Steel", "Brick"]
MAX_BOUNTY = 3

class Player:
    def __init__(self, index):
        self.index = index
        self.outposts = []
        for _ in range(0, 2):
            self.create_outpost()
        self.resources = Counter()

    def create_outpost(self):
        # 1/3 chance that outpost only touches two tiles
        outpost_touched_tiles = 3
        touched_tiles_likelihood = random.randint(0, 3)
        if touched_tiles_likelihood == 0:
            outpost_touched_tiles = 2

        # For each tile, determine a random amount of resources that the outpost will collect.
        resources = Counter()
        for _ in range(0, outpost_touched_tiles):
            tile_resource = RESOURCES[random.randint(0, len(RESOURCES) -  1)]
            resource_amount = random.randint(1, MAX_BOUNTY)
            resources[tile_resource] = resources[tile_resource] + resource_amount
        
        self.outposts.append(resources)

    def collect_resource(self, resource):
        for outpost in self.outposts:
            self.resources[resource] = self.resources[resource] + outpost[resource]