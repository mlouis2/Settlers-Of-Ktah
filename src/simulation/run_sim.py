import math
import sim_helpers
from player import DEFENSE_KEY, RESEARCH_KEY, SURVIVOR_KEY
from sim import perform_simulation
import sys
import re

NUM_ITERATIONS = 1000
optimal_round_lower = 15  # 1 hour game
optimal_round_upper = 30  # 2 hour game
optimal_round_count = (optimal_round_lower + optimal_round_upper) / 2
optimal_victory_p = 47.5


# Loss function
def f(coeff, x, aim, exp):
    return coeff * math.fabs(math.pow(x - aim, exp))


# Function to calculate loss from simulation.
def calculate_loss(avg_rounds, defense_p, research_p):
    # y=0.01abs((x-22.5)^3) from x=0 to 50
    round_loss = f(0.01, avg_rounds, optimal_round_count, 3)
    # y=0.05abs((x-47.5)^2) from x=0 to 100
    defense_loss = f(0.05, defense_p, optimal_victory_p, 2)
    research_loss = f(0.05, research_p, optimal_victory_p, 2)
    victory_loss = (defense_loss + research_loss) / 2
    return round_loss, victory_loss


# Runs simulation for NUM_ITERATIONS and puts result in results.txt
def run_simulations():
    with open('results.txt', 'w') as f:
        sys.stdout = f
        for i in range(NUM_ITERATIONS):
            perform_simulation(False)


# Parses results.txt to obtain aggregate simulation results.
def parse_results():
    total_rounds = 0
    victories = {DEFENSE_KEY: 0, RESEARCH_KEY: 0, SURVIVOR_KEY: 0}
    with open('results.txt', 'r+') as f:
        data = f.read()
        p = re.compile('\s*Number of rounds taken for game to end: (\d+)\s+Victory type: ([a-z]+)')
        m = re.findall(p, data)
        for match in m:
            total_rounds += int(match[0])
            victories[match[1]] += 1

        avg_rounds = total_rounds / NUM_ITERATIONS
        f.write(f'\nAverage number of rounds taken: {avg_rounds} rounds')
        f.write(f'\nVictory type distribution:')
        for victory in victories:
            f.write(f'\n{victory}: {(victories[victory] / NUM_ITERATIONS * 100):.2f}%')

        defense_p = victories[DEFENSE_KEY] / NUM_ITERATIONS * 100
        research_p = victories[RESEARCH_KEY] / NUM_ITERATIONS * 100
        round_loss, victory_loss = calculate_loss(avg_rounds, defense_p, research_p)
        f.write(f'\nRound loss = {round_loss:.3f}, Victory loss = {victory_loss:.3f}')
        # sys.stdout = ori_out


if __name__ == "__main__":
    # ori_out = sys.stdout
    run_simulations()
    parse_results()
