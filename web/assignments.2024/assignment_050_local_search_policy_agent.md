CS 4300: Artificial Intelligence
===============================================

Assignment: Local Search for Agent Policy
------------------------------------------------------

Reflex agents can implemented with a lookup table, or policy, that maps states to actions.
In this assignment, you will use local search to find a policy to use in a reflex agent.
You are allowed to use any of the various local search algorithms discussed in class. If
you would like to use a different local search algorithm, please clear it with the instructor
first.

You will be searching for a policy that can be used in the [Cliff Walking](https://gymnasium.farama.org/environments/toy_text/cliff_walking/)
environment ([cliffwalking.py](https://github.com/Farama-Foundation/Gymnasium/blob/main/gymnasium/envs/toy_text/cliffwalking.py)).

Remember, you are searching for a policy that can be used in this environment. You are not searching for a path from the start to the goal.

Required Process/Files
----------------------

Use the GitHub repository available for this course to store your
solution.  Make a directory named `cliff-policy-local-search`. Store the
local search program in `cliff-policy-local-search/policy_search.py`.
This file must have a function `policy_search()` that returns a
policy for the Cliff Walking environment. The policy must be a
Python list with 37 elements, one for each reachable state
in the environment. Each element is an integer, representing
the action that should be taken at that state.

You must also provide an agent class in the file `cliff-policy-local-search/cliff_policy_agent.py`.
This class must be called `PolicyAgent`, and have the following methods:

- `def __init__(self, policy):` stores the policy in a data member.
- `def reset(self):` does nothing, but is required.
- `def agent_function(self, state):` returns the action specified by the policy for the state.

The [`cliff_policy_search_runner.py`](assignments/cliff_policy_search_runner.py) program can be used to run
your policy search, and save the policy to a file in JSON format. 
It can also be used to measure the quality of the policy.
Use `--help` to look at the command line options available.

For example, you could run these two commands to create a policy,
and to measure it.

    ./cliff_policy_search_runner.py policy-search -p policy.json
    ./cliff_policy_search_runner.py policy-measure -p policy.json

Note that the `policy_search()` function does not take any parameters.
It must be configured such that a call to it will find a good policy in less than
120 seconds, and return it.

Report
------

The report should describe which local search algorithm(s) was(were) used.
It should also describe the objective function used. If the function has
multiple components, explain each one, and how the components are combined to
produce a useful objective function.

Scoring
-------

Your agent will be scored by the following criteria:

- 5 policies will be found using your `policy_search()` function
- all policies will be measured
- the highest and lowest scores will be ignored
- the average of the remaining three will be used as the score.


Required Submissions
------------------------

- Code submitted to github.
- A PDF file containing your report submitted to Canvas.


Hints and Resources
-------------------

- You'll likely spend more time coming up with ideas for objective function 
  components and testing those ideas than writing the actual local search
  algorithm.

- Remember, you're searching for a policy. You are not searching for a path from the start to the goal.
  
- The Cliff Walker environment gives an observation as a single integer, computed by (row*12+column). This makes
  for an index of a compact policy table (python list or np.array). 
  
- A CliffWalker model is recommended. It would have the methods necessary to support the generic
  local search algorithm you choose.
