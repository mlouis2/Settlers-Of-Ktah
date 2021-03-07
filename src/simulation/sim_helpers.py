from player import DEFENSE_KEY, RESEARCH_KEY
from constants import POINTS_TO_MILITARY_VICTORY, POINTS_TO_RESEARCH_VICTORY

def update_barricades(players):
    for player in players:
        for road in player.roads:
            road.update()

def check_for_victory(players):
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
        The winner is: 
        {}
    """.format(num_rounds, victor)
    print(output)
    print("The other players:")
    for player in players:
        if player.index != winner:
            print(str(player))