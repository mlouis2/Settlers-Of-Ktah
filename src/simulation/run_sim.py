import sys

NUM_ITERATIONS = 100
from sim import perform_simulation

with open('results.txt', 'w') as f:
    sys.stdout = f
    for i in range(NUM_ITERATIONS):
        perform_simulation()
# TODO: Add some function to constants.py that allows for constants to be set