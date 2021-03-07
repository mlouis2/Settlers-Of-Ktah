import random
from player import Player, Strategy, Resource
from horde import Horde
import constants

players = []

# Create each player
for i in range(0, constants.NUM_PLAYERS):
    players.append(Player(i, Strategy.GENERAL))

horde = Horde(players)

# represents each round--limited # of rounds until victory paths complete
for _ in range(0, 5):
    resource = random.choice(list(Resource)).name
    for player in players:
        player.collect_resource(resource)
    horde.natural_spread()
    for player in players:
        player.handle_turn()