import sys

NUM_ITERATIONS = 50
from sim import perform_simulation

with open('results.txt', 'w') as f:
    sys.stdout = f
    for i in range(NUM_ITERATIONS):
        perform_simulation(False)

# Bugs to look at / Things to do:
# - Player spread leads to zombie battle? -> Maddie
# - Zombies can only attack one person per natural spread -> Maddie
# - Remove player from game if they lose both castles -> Merissa
# - Add class/functions to constants.py to allow for constants to be set -> Merissa

# look into:
#       - should military and research points be combined?
#       - apothecaries no longer collect resources?
#       - the more resources player have, the more zombies spawn?

# 1. get reasonable results
# 2. find what we want to minimize/maximize - probably even chance of research/defense
# 3. compare difference between our distribution and an ideal distribution of win type percentages
# 4. ^^^ leads to loss function
# 5. look separately @ if other players did well / did horribly