CS 4300: Artificial Intelligence
===============================================

Assignment: Rubik's Cube Search 
--------------------------------

This assignment requires writing the code necessary to 
use the existing cube model and search tool to search
for solutions to solve scrambled cubes.

The AI search library framework must be used, and the
required classes must be created according to the
search library.  Using the rectangle problem's solution
as a reference is encouraged.

Required Classes
------------------------

- Create header and implementation files in `cs4300-code-ai-agents/prog/RubiksCube`.
- Create an `Action` class that inherits from `ai::Search::Action`.
  This class is usually simple.  Instances need to be able to uniquely
  identify any of the legal actions.
- Create a `State` class that inherits from `ai::Search::State`.
  This class will probably have an instance of your cube class as a data member.
  There are a few required methods, for example `IsEqual`.
- Create a `Problem` class that inherits from `ai::Search::Problem`.
  This class requires at least 4 methods, in addition to the constructor.
  Look at the `Actions`, `GoalTest`, `Result` and `StepCost` methods.
- Complete the code in `CubeSearch.cpp` to provide the `search_aux` function solution.
  It is assumed that you will copy the code from the rectangle problem solution
  as a start, then modify it to work with the cube problem.

Required Functionality
----------------------

- The code must compile and run.
- The code must give optimal solutions to the following cubes:
  **NOT COMPLETED YET**

Additional Information
----------------------

- Look at `README_CubeSolver.md` in the source directory 
  for more suggestions on the implementation of the required
  code.
- [Solve the Cube](https://solvethecube.com)
- [Speed Solving](https://www.speedsolving.com/wiki/index.php/Main_Page)

Passoff
-------

Submit your source code by committing and pushing the repository.
Your code will be checked by an automated tester to verify that it
solves all of the above cubes, and several others with similar
difficulty.


