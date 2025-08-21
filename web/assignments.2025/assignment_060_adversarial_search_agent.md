CS 4300: Artificial Intelligence
===============================================

Assignment: Adversarial Search Agent
------------------------------------------------------

Create an adversarial search agent for
[PettingZoo: Connect Four](https://pettingzoo.farama.org/environments/classic/connect_four/)
[connect_four.py](https://github.com/Farama-Foundation/PettingZoo/blob/master/pettingzoo/classic/connect_four/connect_four.py).

You are welcome to create as many agents as you want, play them against
each other, and submit the best one to be graded. You're also welcome to
scrimmage against other students in the class.

Required Process/Files
----------------------

Use the GitHub repository available for this course to store your
solution.  Make a directory named `connect-four-adversarial`. Store the
best agent you create in `connect-four-adversarial/connect_four_agent.py`,
with the class `ConnectFourAgent` that has the following methods:

- `def __init__(self):` initializes the agent
- `def reset(self):` resets the agent for a new game
- `def agent_function(self, state, player):` returns the action that player should take in state. `state` is the observation from petting zoo. `player` is the string that identifies which player the agent is.

Your agent is not allowed to use more than 5*60 = 300 seconds total for one game.

You should create a model class for the environment that supports the
methods necessary for the mini-max algorithm. It is required that your agent
uses mini-max or alpha-beta pruning to choose an action.

Report
------

The report should describe your board evaluation function, whether
you are using mini-max or alpha-beta search, the depth of your cutoff, 
and list the various attempts you have made.


Required Submissions
------------------------

- Code submitted to github.
- A PDF file containing your report submitted to Canvas.


Hints and Resources
-------------------

- [`connect_four_runner.py`](assignments/connect_four_runner.py)

