import random
from player import Player, Strategy
from horde import Horde
from sim_helpers import update_barricades, check_for_victory, end_game_output
import constants

players = []

# Create each player
for i in range(0, constants.NUM_PLAYERS):
    players.append(Player(i, Strategy.GENERAL))

horde = Horde(players)
num_rounds = 0

# represents each round--limited # of rounds until victory paths complete
while (True):
    num_rounds += 1
    possible_victory = check_for_victory(players)
    if possible_victory[0] != -1:
        print("SOMEBODY WON! 🤑🤑")
        break
    
    update_barricades(players)
    resource = random.choice(list(constants.Resource))
    if resource == constants.Resource.ZOMBIE:
        # TODO: Player spread 
        pass
    else:
        for player in players:
            player.collect_resource(resource.name)
    horde.natural_spread()
    for player in players:
        player.handle_turn(horde)

end_game_output(possible_victory[0], possible_victory[1], players, num_rounds)