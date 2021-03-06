import random
from collections import Counter
from enum import Enum

RESOURCES = ["Wood", "Wheat", "Steel", "Brick"]
MAX_BOUNTY = 3
MAX_HORDE_DISTANCE = 6

class Resource(Enum):
    WOOD = 0
    WHEAT = 1
    STEEL = 2
    BRICK = 3
    size = 4

class Strategy(Enum):
    GENERAL = 0
    MILITARISTIC = 1
    RESEARCH = 2
    SURVIVOR = 3

class Player:
    def __init__(self, index, strategy):
        self.index = index
        self.strategy = strategy
        self.outposts = []
        for _ in range(0, 2):
            self.create_outpost()
        self.resources = Counter()
        self.num_knights = 0
        self.defense_points = 0
        
        # VVV This probably should/will be changed to a Castle class at some point,
        # since we also need to know if the castle is infected or not.
        self.castle_horde_distance = [random.randint(1, MAX_HORDE_DISTANCE), random.randint(1, MAX_HORDE_DISTANCE)]

    def create_outpost(self):
        # 1/3 chance that outpost only touches two tiles
        outpost_touched_tiles = 3
        touched_tiles_likelihood = random.randint(0, 3)
        if touched_tiles_likelihood == 0:
            outpost_touched_tiles = 2

        # For each tile, determine a random amount of resources that the outpost will collect.
        resources = Counter()
        for _ in range(0, outpost_touched_tiles):
            tile_resource = Resource(random.randint(0, Resource.size.value -  1)).name
            resource_amount = random.randint(1, MAX_BOUNTY)
            resources[tile_resource] = resources[tile_resource] + resource_amount
        
        self.outposts.append(resources)

    def collect_resource(self, resource):
        resource_name = Resource(resource).name
        for outpost in self.outposts:
            self.resources[resource_name] = self.resources[resource_name] + outpost[resource_name]
    
    def handle_turn(self):
        if self.strategy == Strategy.GENERAL:
            pass
        elif self.strategy == Strategy.MILITARISTIC:
            pass
        elif self.strategy == Strategy.RESEARCH:
            pass
        elif self.strategy == Strategy.SURVIVOR:
            pass