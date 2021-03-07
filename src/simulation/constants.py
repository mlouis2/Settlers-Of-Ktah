from enum import Enum

# Holds all simulation constants that we can tweak for testing purposes
NUM_PLAYERS = 4
MAX_HORDE_DISTANCE = 6
MAX_BOUNTY = 3

class Resource(Enum):
    WOOD = 0
    WHEAT = 1
    STEEL = 2
    BRICK = 3

# Should this enum be replaced by the building cost dict? Maybe
class Building(Enum):
    OUTPOST = 0
    ROAD = 1
    BARRICADE = 2
    KNIGHT = 3
    APOTHECARY = 4