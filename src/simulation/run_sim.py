import sys
import re

NUM_ITERATIONS = 25
from sim import perform_simulation
from player import DEFENSE_KEY, RESEARCH_KEY, SURVIVOR_KEY
import sim_helpers

with open('results.txt', 'w') as f:
    sys.stdout = f
    for i in range(NUM_ITERATIONS):
        perform_simulation(False)

total_rounds = 0
victories = {DEFENSE_KEY: 0, RESEARCH_KEY: 0, SURVIVOR_KEY: 0}
with open('results.txt', 'r+') as f:
    data = f.read()
    p = re.compile('\s*Number of rounds taken for game to end: (\d+)\s+Victory type: ([a-z]+)')
    m = re.findall(p, data)
    for match in m:
        total_rounds += int(match[0])
        victories[match[1]] += 1

    f.write(f'\nAverage number of rounds taken: {total_rounds / NUM_ITERATIONS} rounds')
    f.write(f'\nVictory type distribution:')
    for victory in victories:
        f.write(f'\n{victory}: {(victories[victory] / NUM_ITERATIONS * 100):.2f} %')
