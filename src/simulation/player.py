import random
from collections import Counter
from enum import Enum
import buildings
import castle
from road import Road
from constants import Building, BUILD_COSTS

DEFENSE_KEY = "defense"
RESEARCH_KEY = "research"

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
        self.roads = []
        for _ in range(0, 2):
            self.outposts.append(buildings.Outpost(index))
            self.castles.append(castle.Castle(index))
        self.resources = Counter()
        self.num_knights = 0
        self.points = Counter({DEFENSE_KEY: 0, RESEARCH_KEY: 0})

    def __str__(self):
        return """
            Index: {}
            Strategy type: {}
            Resources: {}
            Number of knights: {}
            Victory points: {}
        """.format(self.index, self.strategy, self.resources, self.num_knights, self.points)

    def collect_resource(self, resource):
        for outpost in self.outposts:
            self.resources[resource] = self.resources[resource] + outpost.resources[resource]

    def can_build(self, build_index):
        building = Building(build_index)
        if building == Building.BARRICADE:
            if self.get_plain_road_index() == -1:
                return False
        costs = BUILD_COSTS[building.name]
        for resource in costs:
            if costs[resource] > self.resources[resource]:
                return False
        # TODO: for apothecaries, need to check if player has outpost that are not apothecaries
        return True

    def build(self, build_index):
        building = Building(build_index)
        costs = BUILD_COSTS[building.name]
        for resource in costs:
            self.resources[resource] = self.resources[resource] - costs[resource]
        
        # switch based off of the building enum and build it!
        if building == Building.OUTPOST:
            self.outposts.append(buildings.Outpost(self.index))
        elif building == Building.APOTHECARY:
            for outpost in self.outposts:
                if not outpost.isApothecary:
                    outpost.isApothecary == True
                    break
        elif building == Building.ROAD:
            self.roads.append(Road(self.index))
        elif building == Building.BARRICADE:
            index_to_upgrade = self.get_plain_road_index()
            self.roads[index_to_upgrade].upgrade()
        elif building == Building.KNIGHT:
            self.num_knights = self.num_knights + 1
        else:
            pass

    # Player is able to attack if they have a castle with horde distance of 3 or less
    def able_to_attack(self):
        for castle in self.castles:
            if castle.horde_distance <= 2:
                return True
        return False
    
    def get_infected_castle_index(self):
        for i in range(0, len(self.castles)):
            castle = self.castles[i]
            if castle.infected:
                return i
        return -1

    def handle_win_or_loss(self, win, player_initiated):
        if win:
            self.points[DEFENSE_KEY] = self.points[DEFENSE_KEY] + 1
            infected_castle_index = self.get_infected_castle_index()

            if player_initiated and infected_castle_index != -1:
                self.castles[infected_castle_index].uninfect()

        else:
            if self.num_knights > 0:
                self.num_knights = self.num_knights - 1
            for castle in self.castles:
                if not castle.infected:
                    castle.infect()
                    break

    def attack(self, horde):
        horde.battle(self, True)
    
    def handle_turn(self, horde):
        if self.strategy == Strategy.GENERAL:
            # Randomized build order
            build_order = list(range(0, len(list(Building))))
            random.shuffle(build_order)

            for build_index in build_order:
                if self.can_build(build_index):
                    self.build(build_index)
            
            # Attacks if 1) able to 2) has 50% chance of winning
            win_probability = self.num_knights / (horde.size * 1.5)
            if self.able_to_attack() and win_probability > 0.5:
                self.attack(horde)
            
        elif self.strategy == Strategy.MILITARISTIC:
            # Build knights, outposts/roads, attacks whenever possible (Maddie)
            pass
        elif self.strategy == Strategy.RESEARCH:
            # Build outposts, barricades, knights, attacks when horde distance is 1 (Merissa)
            pass
        elif self.strategy == Strategy.SURVIVOR:
            # Build barricades, outposts, knights, only attacks to liberate castles (Merissa)
            pass
    
    def get_plain_road_index(self):
        for i in range(0, len(self.roads)):
            road = self.roads[i]
            if not road.is_barricade:
                return i
        return -1

    def has_barricade(self):
        for road in self.roads:
            if road.is_barricade:
                return True
        return False