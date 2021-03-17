from player import DEFENSE_KEY, RESEARCH_KEY, SURVIVOR_KEY
import constants

def update_research_v_points(num):
    constants.POINTS_TO_RESEARCH_VICTORY = num

def update_military_v_points(num):
    constants.POINTS_TO_MILITARY_VICTORY = num

def update_outpost_cost(costs):
    constants.BUILD_COSTS["OUTPOST"] = costs

def update_apothecary_cost(costs):
    constants.BUILD_COSTS["APOTHECARY"] = costs

def update_road_cost(costs):
    constants.BUILD_COSTS["ROAD"] = costs

def update_knight_cost(costs):
    constants.BUILD_COSTS["KNIGHT"] = costs

def update_barricade_cost(costs):
    constants.BUILD_COSTS["BARRICADE"] = costs

def update_barricades(player):
    for road in player.roads:
        road.update()

def check_for_lone_survivor(players):
    possible_winners = [player for player in players]
    for i in range(0, len(players)):
        player = players[i]
        if player.has_lost:
            possible_winners.remove(player)
    # This is what was causing the bug... but why does this happen?
    if len(possible_winners) == 0:
        return 0
    # If only one person left standing
    if len(possible_winners) == 1:
        return possible_winners[0].index
    return -1

def check_for_victory(players):
    survivor = check_for_lone_survivor(players)
    if survivor != -1:
        return (survivor, SURVIVOR_KEY)
    for i in range(0, len(players)):
        player = players[i]
        if player.has_lost:
            continue
        if player.points[DEFENSE_KEY] >= constants.POINTS_TO_MILITARY_VICTORY:
            return (i, DEFENSE_KEY)
        if player.points[RESEARCH_KEY] >= constants.POINTS_TO_RESEARCH_VICTORY:
            return (i, RESEARCH_KEY)
    return (-1, None)

def end_game_output(winner, victory_type, players, num_rounds, horde):
    victor = players[winner]
    output = """
        Number of rounds taken for game to end: {}
        Victory type: {}
        Horde size: {}
        The winner is: 
        {}
    """.format(num_rounds, victory_type, horde.size, victor)
    print(output)
    print("The other players:")
    for player in players:
        if player.index != winner:
            print(str(player))