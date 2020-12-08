Jetan Evaluation Material
---------------------------

As part of the Jetan project, we discussed several
ideas for elements of evaluation functions.
You were required to implement several
evaluation functions as part of the assignments.
In this task, you will implement an additional evaluation function.

## Description

O-Tar was a coward Jeddak (chief) of the city Manator. He had a
special loathing of Thoats. He played Jetan with a strategy to
intentionally get rid of his Thoat players first.

An evaluation function that reflected this desire to remove the
player's own Thoats would adjust material values appropriately.


## Task

Create a new evaluation function to your Jetan agent.  The new evaluation function will
use the idea algorithm for material evaluation of the board.

Play your agent against itself where both agents use this new evaluation function.
Play your agent against itself where one agent uses this evaluation function, and the other uses your best evaluation function.
That's a total of 2 games.

Pass-off
--------

## Report

In the exam report, record the results of the two games.  It should be clear which
of the two agent versions is which.  Note your observations regarding the motion 
of pieces with the new evaluation function.

## Source 

Record the agent arguments necessary to run your agent with this new evaluation
function in the file `cs4300-code-ai-agents/prog/Jetan/jetan_agent_thoat_arguments.txt`.
Be sure that your code with this evaluation function is committed and pushed.
