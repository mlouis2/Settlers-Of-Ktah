import sys

NUM_ITERATIONS = 5
from sim import perform_simulation
import sim_helpers

with open('results.txt', 'w') as f:
    sys.stdout = f
    for i in range(NUM_ITERATIONS):
        perform_simulation(False)