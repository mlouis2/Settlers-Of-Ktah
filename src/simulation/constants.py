from enum import Enum

# Holds all simulation constants that we can tweak for testing purposes
NUM_PLAYERS = 4
MAX_HORDE_DISTANCE = 6
MAX_BOUNTY = 3
POINTS_TO_MILITARY_VICTORY = 10
POINTS_TO_RESEARCH_VICTORY = 10

# Spinner for resource
class Resource(Enum):
    WOOD = 0
    WHEAT = 1
    STEEL = 2
    BRICK = 3
    ZOMBIE = 4

# Should this enum be replaced by the building cost dict? Maybe
class Building(Enum):
    OUTPOST = 0
    ROAD = 1
    BARRICADE = 2
    KNIGHT = 3
    APOTHECARY = 4

BUILD_COSTS = {
    "OUTPOST": {"WOOD": 2, "WHEAT": 4, "BRICK": 6},
    "ROAD": {"WOOD": 2, "BRICK": 2},
    "KNIGHT": {"STEEL": 4, "WHEAT": 2},
    "APOTHECARY": {"STEEL": 4, "WOOD": 6},
    "BARRICADE": {"BRICK": 2}
}