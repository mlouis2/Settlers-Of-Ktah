import random
from player import Player, Strategy
from horde import Horde
from sim_helpers import update_barricades, check_for_victory
import constants

players = []

# Create each player
for i in range(0, constants.NUM_PLAYERS):
    players.append(Player(i, Strategy.GENERAL))

horde = Horde(players)

# represents each round--limited # of rounds until victory paths complete
for _ in range(0, 10):
    possible_victory = check_for_victory(players)
    if possible_victory[0] != -1:
        print("SOMEBODY WON! 🤑🤑")
        break
    
    update_barricades(players)
    resource = random.choice(list(constants.Resource)).name
    for player in players:
        player.collect_resource(resource)
    horde.natural_spread()
    for player in players:
        player.handle_turn(horde)

for player in players:
    print(player)