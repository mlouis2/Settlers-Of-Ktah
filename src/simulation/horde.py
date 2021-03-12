import random

class Horde:

    def __init__(self, players, log):
        self.size = 1
        self.players = players
        self.log = log
    
    def approach_castle(self, player, castle_index, can_battle = True):
        horde_distance = player.castles[castle_index].horde_distance
        # Can't battle if it was from player spread, so do nothing.
        if horde_distance == 1 and not can_battle:
            return
        if horde_distance > 1:
            player.castles[castle_index].horde_distance = horde_distance - 1
        else:
            self.battle(player)

    # Called per-round, increases Horde size and might move Horde closer to player
    # castles or trigger a battle.
    def natural_spread(self):
        # 50% chance of spreading
        probability = random.random()
        if probability < 0.5:
            return
        if self.log:
            print("The Horde is spreading.")
        self.size = self.size + 1
        for player in self.players:
            for castle_index in range (0, 2):

                probability = random.random()
                # 50% chance of getting closer with no barricade
                if not player.has_barricade() and probability < 0.5:
                    self.approach_castle(player, castle_index)
                
                # -10% chance with each given barricade
                num_barricades = player.get_barricade_count()
                if player.has_barricade() and probability < 0.5 - (num_barricades * 0.1):
                    self.approach_castle(player, castle_index)

    def battle(self, player, player_initiated = False):
        if self.log:
            print("The Horde is battling with player {}".format(player.index))
            print("Was the battle player initiated? {}".format(player_initiated))
        probability = player.num_knights / (self.size)
        player.handle_win_or_loss((probability > random.random()), player_initiated)