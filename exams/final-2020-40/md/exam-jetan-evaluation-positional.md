Jetan Evaluation Positional
---------------------------

As part of the Jetan project, we discussed several
ideas for elements of evaluation functions.
You were required to implement several
evaluation functions as part of the assignments.
In this task, you will implement an additional evaluation function.

## Description

Pieces located in the middle of the board could have an advantage, as more moves
are available to them.  Encourage pieces to move to the middle 
by assigning value to the location of the piece.  The value will be 12, 
minus the Manhattan distance from the center of the board (4.5,4.5) to the piece's location.
For example, a piece located at position (2,9) will have a value of `12 - (abs(2-4.5)+abs(9-4.5)) = 12 - (2.5+4.5) = 5`.

An evaluation function would add these values for all of you pieces, and subtract them for all of your opponent's pieces.


## Task

Create a new evaluation function to your Jetan agent.  The new evaluation function will
use the above algorithm for positional evaluation of the board, and use the material 
evaluation function already used in another of your evaluation functions.

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
function in the file `cs4300-code-ai-agents/prog/Jetan/jetan_agent_middle_arguments.txt`.
Be sure that your code with this evaluation function is committed and pushed.
