from player import DEFENSE_KEY, RESEARCH_KEY, SURVIVOR_KEY
from constants import POINTS_TO_MILITARY_VICTORY, POINTS_TO_RESEARCH_VICTORY

def update_barricades(players):
    for player in players:
        for road in player.roads:
            road.update()

def check_for_lone_survivor(players):
    possible_winners = [player for player in players]
    losers = []
    for i in range(0, len(players)):
        player = players[i]
        castles_infected = [castle.infected for castle in player.castles]
        if castles_infected[0] and castles_infected[1]:
            possible_winners.remove(player)
    # If only one person left standing
    if len(possible_winners) == 1:
        return possible_winners[0].index
    return -1

def check_for_victory(players):
    survivor = check_for_lone_survivor(players)
    if survivor != -1:
        return (survivor, SURVIVOR_KEY)
    else:
        for i in range(0, len(players)):
            player = players[i]
            if player.points[DEFENSE_KEY] >= POINTS_TO_MILITARY_VICTORY:
                return (i, DEFENSE_KEY)
            if player.points[RESEARCH_KEY] >= POINTS_TO_RESEARCH_VICTORY:
                return (i, RESEARCH_KEY)
        return (-1, None)

def end_game_output(winner, victory_type, players, num_rounds):
    victor = players[winner]
    output = """
        Number of rounds taken for game to end: {}
        Victory type: {}
        The winner is: 
        {}
    """.format(num_rounds, victory_type, victor)
    print(output)
    print("The other players:")
    for player in players:
        if player.index != winner:
            print(str(player))