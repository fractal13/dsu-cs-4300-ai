Wumpus Logic Nirvana
---------------------------

## Description

The tribe of *Supmuw* considers being eaten by a wumpus to be Nirvana,
the highest obtainable state of existence.  (Being eaten by the wumpus gives
about the same experience as listening to grunge music.)
If the wumpus is in the same location as a pit, then the adventurer would
fall into the pit before being eaten.  This is not Nirvana.
The adventurer must be sure that the wumpus isn't with a pit before walking
into the wumpus' location.  Nirvana is only reached if the agent
yells ``Smells like teen spirit!'' in the last action before moving forward into the
cell that contains the wumpus and no pit.

## Task

Modify your wumpus agent to seek Nirvana.

- You will want to able to ask the knowledge base if Nirvana is 
  achievable in a given cell (yes wumpus, no pit).
- Add a method to the agent that checks if the cell that
  is forward of the agent is Nirvana achievable.  If it is,
  then remove any contents from the plan queue, and push
  a `ai::Wumpus::Action::YELL` action and a `ai::Wumpus::Action::FORWARD`
  action, then return true.
  If the forward cell is not Nirvana achievable, then
  do nothing and return false.
- Add to the `if/else` chain in `ChooseAction()`
  `else if(!plan.empty())` and `else if(ForwardIsSafe())`
  `else if` that calls your new method.  If it returns true,
  pop an action from the queue.

Run your agent with this feature enabled on at least 100 worlds with the nirvana option
turned on in the server: `--nirvana 1`.  The server will reward the
agent with 10000 points if Nirvana is obtained by yelling followed by being
eaten.

Pass-off
--------

## Report

In the exam report, record the average score of your agent in the 100 worlds.

## Source 

Save the server log and error files as
`cs4300-code-ai-agents/prog/WumpusWorld/nirvana.log` and
`cs4300-code-ai-agents/prog/WumpusWorld/nirvana.err`.

Be sure that your code with these changes and these log files are committed and pushed.
