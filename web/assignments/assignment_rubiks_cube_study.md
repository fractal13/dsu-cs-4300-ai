CS 4300: Artificial Intelligence
===============================================

Assignment: Rubik's Cube Search Study
------------------------------------------------

This assignment is built on top of the previous assignments.
You will now implement a program to search for a solution to
Rubik's Cube problems.

You should modify program from the first
assignment that can read instructions from input and
execute operations on a cube.

Required Code
------------------------

- Integrate your code that reads input commands for testing Rubiks Cube.
- Add support for these commands
  * config generation_limit number
  * config storage_limit number
  * config depth_limit number
  * solve tree|graph astar|bfs|dfs|dl|greedy|uc
- A `solve` operation should try to solve the cube that was previously set with the
  `initial` command.  It will report the steps to solve it, or it will indicate
  that no solution was found.  It will also report how many nodes were generated.
  Note that the program's in-memory cube is not actually set to solved.  It's just
  used to create the initial state of the search tree.
- The `config` operations configure parameters for any subsequent `solve` operations.
- An implementation of a heuristic function for your problem class.

Required Functionality
----------------------

- The program must support any of the search combinations listed above.
- A collection of `initial` cubes are provided.  You must attempt to solve each
  of them using at least `graph astar`, `graph bfs` and `tree dl`.
  Build a table summarizing at least:
  * the cost of solution found by each strategy
  * the number of nodes generated by each strategy
  * the estimated maximum number of nodes stored by each strategy
- Create a short report, including your table and a summary of your observations
  comparing the strategies used.

Cubes to Solve
--------------

- [Zip file with cubes](assignments/shuffled_cubes_to_solve.zip)

Passoff
-------

Submit your source code by committing and pushing the repository.
Also submit your report in Canvas, in the PDF format.
