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
    size = 4

# Should this enum be replaced by the building cost dict? Maybe
class Building(Enum):
    OUTPOST = 0
    ROAD = 1
    BARRICADE = 2
    KNIGHT = 3
    APOTHECARY = 4
    size = 5

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
        
        # This probably should/will be changed to a Castle class at some point,
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

    def can_build(self, building):
        # TODO: create some sort of building cost dict
        pass

    def build(self, building):
        # switch based off of the building enum and build it!
        pass
    
    def handle_turn(self):
        if self.strategy == Strategy.GENERAL:
            # Build order is random, attack somewhat randomly (Maddie)
            build_order = [range(0, Building.size.value)]
            random.shuffle(build_order)

            for building in build_order:
                if self.can_build(building):
                    self.build(building)
            pass
        elif self.strategy == Strategy.MILITARISTIC:
            # Build knights, outposts/roads, attacks whenever possible (Maddie)
            pass
        elif self.strategy == Strategy.RESEARCH:
            # Build outposts, barricades, knights, attacks when horde distance is 1 (Merissa)
            pass
        elif self.strategy == Strategy.SURVIVOR:
            # Build barricades, outposts, knights, only attacks to liberate castles (Merissa)
            pass