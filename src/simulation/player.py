import random
from collections import Counter
from enum import Enum
from buildings import Castle, Road, Outpost
from constants import Building, BUILD_COSTS

DEFENSE_KEY = "defense"
RESEARCH_KEY = "research"
SURVIVOR_KEY =  "survivor"

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
        self.castles = []
        self.roads = []
        self.resources = Counter()
        for _ in range(0, 2):
            self.outposts.append(Outpost(index))
            self.castles.append(Castle(index))
        self.collect_initial_resource()
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
            if outpost.is_apothecary:
                self.points[RESEARCH_KEY] += 1

    def can_build(self, build_index):
        building = Building(build_index)
        if building == Building.OUTPOST:
            # for every outpost after the sixth outpost, needs two roads for every outpost
            if len(self.outposts) > 6 and (len(self.outposts) - 6) / 2 > len(self.roads):
                return False
        if building == Building.APOTHECARY:
            if self.get_plain_outpost_index() == -1:
                return False
        if building == Building.BARRICADE:
            if self.get_plain_road_index() == -1:
                return False
        costs = BUILD_COSTS[building.name]
        for resource in costs:
            if costs[resource] > self.resources[resource]:
                return False
        return True

    def build(self, build_index):
        building = Building(build_index)
        costs = BUILD_COSTS[building.name]
        for resource in costs:
            self.resources[resource] = self.resources[resource] - costs[resource]

        # switch based off of the building enum and build it!
        if building == Building.OUTPOST:
            self.outposts.append(Outpost(self.index))
        elif building == Building.APOTHECARY:
            outpost_to_upgrade = self.get_plain_outpost_index()
            self.outposts[outpost_to_upgrade].is_apothecary = True
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
        win_probability = self.num_knights / (horde.size * 1.5)
        can_attack = self.able_to_attack()

        if self.strategy == Strategy.GENERAL:
            # Randomized build order
            build_order = list(range(0, len(list(Building))))
            random.shuffle(build_order)

            for build_index in build_order:
                if self.can_build(build_index):
                    self.build(build_index)

            # Attacks if 1) able to 2) has 50% chance of winning
            if can_attack and win_probability >= 0.5:
                self.attack(horde)

        elif self.strategy == Strategy.MILITARISTIC:
            # Build knights, outposts/roads, attacks whenever possible (Maddie)
            pass

        elif self.strategy == Strategy.RESEARCH:
            # Build apothecaries and outposts before barricades and knights
            build_order = [Building.APOTHECARY, Building.OUTPOST,
                           Building.BARRICADE, Building.ROAD, Building.KNIGHT]
            for building in build_order:
                if self.can_build(building):
                    self.build(build_index)

            # Attacks if horde distance is 1
            for castle in self.castles:
                if can_attack and castle.horde_distance == 1 and win_probability >= 0.5:
                    self.attack(horde)

        elif self.strategy == Strategy.SURVIVOR:
            # Build barricades and outposts before knights and apothecaries
            build_order = [Building.BARRICADE, Building.OUTPOST,
                           Building.KNIGHT, Building.APOTHECARY, Building.ROAD]

            # Attacks only to liberate castles
            for castle in self.castles:
                if can_attack and castle.infected and win_probability >= 0.5:
                    self.attack(horde)

        self.trade_with_bank()

    def get_plain_road_index(self):
        for i in range(0, len(self.roads)):
            road = self.roads[i]
            if not road.is_barricade:
                return i
        return -1

    def get_plain_outpost_index(self):
        for i in range(0, len(self.outposts)):
            outpost = self.outposts[i]
            if not outpost.is_apothecary:
                return i
        return -1

    def has_barricade(self):
        for road in self.roads:
            if road.is_barricade:
                return True
        return False

    def trade_with_bank(self):
        print(self.resources)
        least_resource = self.resources.most_common()[-1][0]
        for resource in self.resources:
            if self.resources[resource] > 20:
                self.resources[resource] -= 20
                self.resources[least_resource] += 1

    def collect_initial_resource(self):
        for outpost in self.outposts:
            for resource in outpost.resources:
                self.resources[resource] = self.resources[resource] + outpost.resources[resource]