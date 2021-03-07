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

    def can_build(self, build_index):
        building = constants.Building(build_index)
        costs = constants.BUILD_COSTS[building.name]
        for resource in costs:
            if costs[resource] > self.resources[resource]:
                return False
        # TODO: for apothecaries, need to check if player has outpost that are not apothecaries
        # TODO: for barricades, need to check if player has roads that are not barricades
        return True

    def build(self, build_index):
        building = constants.Building(build_index)
        costs = constants.BUILD_COSTS[building.name]
        for resource in costs:
            self.resources[resource] = self.resources[resource] - costs[resource]
        
        # switch based off of the building enum and build it!
        if building == constants.Building.OUTPOST:
            self.outposts.append(buildings.Outpost(self.index))
        elif building == constants.Building.APOTHECARY:
            for outpost in self.outposts:
                if not outpost.isApothecary:
                    outpost.isApothecary == True
                    break
        elif building == constants.Building.ROAD:
            pass # TODO
        elif building == constants.Building.BARRICADE:
            pass # TODO
        elif building == constants.Building.KNIGHT:
            pass # TODO
        else:
            pass
    
    def handle_turn(self):
        if self.strategy == Strategy.GENERAL:
            # Build order is random, attack somewhat randomly (Maddie)
            build_order = list(range(0, len(list(constants.Building))))
            random.shuffle(build_order)

            for build_index in build_order:
                if self.can_build(build_index):
                    self.build(build_index)
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