import random
from player import Player, Strategy
from horde import Horde
from sim_helpers import update_barricades, check_for_victory, end_game_output
from constants import Resource, NUM_PLAYERS

def perform_simulation():
    players = []

    # Create each player
    for i in range(0, NUM_PLAYERS):
        players.append(Player(i, random.choice(list(Strategy))))

    horde = Horde(players)
    num_rounds = 0

    # Each iteration represents a round
    while (True):
        possible_victory = check_for_victory(players)
        if possible_victory[0] != -1:
            break

        # Each iteration represents a turn
        for player in players:
            resource = random.choice(list(Resource))
            if resource == Resource.ZOMBIE:
                player.spread_zombie(players, horde)
            else:
                for player in players:
                    player.collect_resource(resource.name)
            update_barricades(player)
            player.handle_turn(horde)

        horde.natural_spread()
        num_rounds += 1

    end_game_output(possible_victory[0], possible_victory[1], players, num_rounds, horde)

# Allows this file to still be called on its own
perform_simulation()