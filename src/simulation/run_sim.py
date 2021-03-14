import sys

NUM_ITERATIONS = 25
from sim import perform_simulation

with open('results.txt', 'w') as f:
    sys.stdout = f
    for i in range(NUM_ITERATIONS):
        perform_simulation(True)