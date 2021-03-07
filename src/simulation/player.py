import random
from collections import Counter
from enum import Enum
import buildings
import castle
import constants

class Strategy(Enum):
    GENERAL = 0
    MILITARISTIC = 1
    RESEARCH = 2
    SURVIVOR = 3
    size = 4

class Player:
    def __init__(self, index, strategy):
        self.index = index
        self.strategy = strategy
        self.outposts = []
        self.castles = []
        for _ in range(0, 2):
            self.outposts.append(buildings.Outpost(index))
            self.castles.append(castle.Castle(index))
        self.resources = Counter()
        self.num_knights = 0
        self.points = Counter({'defense': 0, 'research': 0})

    def collect_resource(self, resource):
        for outpost in self.outposts:
            self.resources[resource] = self.resources[resource] + outpost.resources[resource]

    def can_build(self, building):
        # TODO: create some sort of building cost dict
        pass

    def build(self, building):
        # switch based off of the building enum and build it!
        pass
    
    def handle_turn(self):
        if self.strategy == Strategy.GENERAL:
            # Build order is random, attack somewhat randomly (Maddie)
            build_order = [range(0, len(list(constants.Building)))]
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