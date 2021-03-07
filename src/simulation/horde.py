import random

class Horde:

    def __init__(self, players):
        self.size = 1
        self.players = players

    # Called per-round, increases Horde size and might move Horde closer to player
    # castles or trigger a battle.
    def natural_spread(self):
        # TODO: Size shouldn't increase if spread triggers a battle that the player wins.
        self.size = self.size + 1
        for player in self.players:
            for castle_index in range (0, 2):
                # 50% chance of getting closer to each castle that the player has
                coin_flip = random.randint(0, 1)
                if coin_flip == 0:
                    horde_distance = player.castles[castle_index].horde_distance
                    if horde_distance > 1:
                        player.castles[castle_index].horde_distance = horde_distance - 1
                    else:
                        self.battle(player)

    def battle(self, player):
        probability = player.num_knights / (self.size * 1.5)
        if probability > random.random():
            pass
        else:
            pass