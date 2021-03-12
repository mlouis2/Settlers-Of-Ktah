import sys

NUM_ITERATIONS = 100
from sim import perform_simulation

with open('results.txt', 'w') as f:
    sys.stdout = f
    for i in range(NUM_ITERATIONS):
        perform_simulation()

# TODO: Add some function to constants.py that allows for constants to be set
# TODO: Check for enough zombies when battling -> maddie
# TODO: why do people have zombie resources? -> merissa
# TODO: why do they have so many resources? -> merissa

# look into:
#       - look into why number of rounds is very low
#       - should military and research points be combined?
#       - apothecaries no longer collect resources?
#       - the more resources player have, the more zombies spawn?

# 1. get reasonable results
# 2. find what we want to minimize/maximize - probably even chance of research/defense
# 3. compare difference between our distribution and an ideal distribution of win type percentages
# 4. ^^^ leads to loss function
# 5. look separately @ if other players did well / did horribly