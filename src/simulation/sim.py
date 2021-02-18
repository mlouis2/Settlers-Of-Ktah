from player import Player

NUM_PLAYERS = 4
players = []

# Create each player
for i in range(0, NUM_PLAYERS):
    players.append(Player(i))