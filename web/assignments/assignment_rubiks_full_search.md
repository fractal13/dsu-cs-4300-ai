CS 4300: Artificial Intelligence
===============================================

Assignment: Rubik's Cube Search III
-----------------------------------

This assignment requires writing additional code
in the Rubik's Cube search program. It assumes
that the work for the previous assignment has
been successfully completed.

The assignment also requires creation of script
commands to find full solutions to arbitrarily 
scrambled cubes. These commands should be kept
in script file(s) that can be used to configure
and execute a sequence of searches, using the
tool that has been built.

Requirements
------------

- Create an improved Heuristic.
- Create a script containing searches to solve
  any 3x3x3 cube.
- Report on program performance.

Performance Measure
-------------------

The performance measure for this assignment is
designed to favor solving all cubes.  Among
solutions, those that have less cost (fewer moves)
are better, and those that take less time to calculate
are better.

Let `Cost` be the number of basic moves required
in the solution, `Generate` be the total number of nodes
generated across all searches to find the solution,
`Time` be the total number of seconds spent finding the
solution, and `Fail` be 1 if the solution does not
solve the cube and 0 if the solution does solve the cube.

Let `MoveTime` be `1 second/move`, `GenerateTime` be `10^-5 seconds/node`,
and `FailPenalty` be `600 seconds`.

Then

`PerformaceMeasure1 = Cost * MoveTime + Generate * GenerateTime + Fail * FailPenalty`,

`PerformaceMeasure2 = Cost * MoveTime + Time + Fail * FailPenalty`,

and 

`PerformanceMeasure = min( PerformaceMeasure1, PerformaceMeasure2 )`

Your agent is attempting to minimize the average performance measure.
This will be measured by measuring the above parameters as the script
attempts to solve a collection of scrambled cubes.

For the `Time` parameter to be fair, grading will occur on one of the
PCs in the lab, running the installed Linux OS.

## Rubric

- `PerformanceMeasure < 90`: A
- `PerformanceMeasure < 100`: A-
- `PerformanceMeasure < 110`: B+
- `PerformanceMeasure < 120`: B
- `PerformanceMeasure < 130`: B-
- `PerformanceMeasure < 150`: C
- `PerformanceMeasure < 200`: D
- `PerformanceMeasure >= 200`: F

  
Improved Heuristic
------------------

Create an improved `Problem::Heuristic()`.  Improved means
it needs to be at least as good (at least as high) as
the Facelets/20 heuristic in all cases, but better than (higher than)
the Facelets/20 heuristic in some cases.

To prove the heuristic is improved, you should solve the same set
of cubes with A* search, with each heuristic.  Report on the average
number of nodes generated and the average maximum number of nodes stored
on the frontier.  These should be cubes of about depth 6 from solved.

How will these numbers show which heuristic is better?

## Coding Advice I (Improved Heuristic)

It is recommended that the old heuristic not be deleted. 
Instead, make it easy to switch between the old and new
heuristics.  One way is to make each heuristic be calculated
by a different method, and use `Problem::Heuristic()` to
select which one to use.

For example, you could have a structure like this:

    double Problem::Heuristic(const ai::Search::State  * const state_in) const {
      //const State * const state = dynamic_cast< const State * const >( state_in );
      double h = 0.0;
      switch( mHeuristic ) {
      case ZERO_HEURISTIC:
      default: // fall through
        h = zeroHeuristic( state_in );
        break;
      case FACELET_HEURISTIC:
        h = faceletHeuristic( state_in );
        break;
      }
      return h;
    }

Then a data member of the `Problem` class will control which
heuristic to use.  Just set this data member when a `Problem`
object is created.

## Coding Advice II (Improved Heuristic)

To allow scripting control, add to the `AppConfig` class
options for controlling a configuration parameter.  And
in `CubeSearch.cpp` configure the user selected heuristic 
for the `Problem` class when it is constructed.

The `AppConfig` code may look something like this:

    // heuristic options
    void AppConfig::setZeroHeuristic( ) {
      mOptions[ "heuristic" ] = Problem::ZERO_HEURISTIC;
    }
    void AppConfig::setFaceletHeuristic( ) {
      mOptions[ "heuristic" ] = Problem::FACELET_HEURISTIC;
    }
    int AppConfig::heuristic( ) const {
      return static_cast< int >( mOptions.at( "heuristic" ) );
    }

The `CubeSearch.cpp` code may look something like this:

    problem->setHeuristic( static_cast< Problem::HeuristicEnum >( data.config.heuristic( ) ) );

Note this allows scripts to say

    config heuristic 0
    
or

    config heuristic 1
    
You could create as many heuristics as you can imagine, and let
the user use different ones at their will, without rebuilding
the application.


Cube Solving Script
-----------------------

Create a `RubiksCubeSolver` command script that assumes there
is cube already configured, then executes commands to solve
the cube.  It is expected that there will be multiple `search`
commands executed, and that `config apply_solution 1` will be
in effect.  Thus, the result of the script will be solving the
cube in a step-by-step fashion, until it is completely solved.

## Scripting Advice I (Cube Solving Script)

- Select a cube solving strategy, such as the "Beginner Method".
  Build your script to implement each phase of the solution.
  If any solution phase times out, figure out how to divide
  that phase into multiple steps with intermediate goals.
- Use `search graph astar`, `search tree dl`, or `search tree ids`.
  You may interleave them, in some cases do A *, and do Depth Limited
  in others.  Your call.  Remember, as your heuristic improves,
  so will A *.
- Use multiple script files, to stay organized.  Think of each
  script file as a function.  You "call a function" by doing
  `run filename.cmd`.
- Use the cube definition functionality to make symbolic names
  for desired cube configurations.
- Use the move definition functionality and the move restriction
  functionality to solve known cases.
- Build the script so that it will solve any cube.  Even if the
  solution is bad (too many steps).  Later, you can optimize the
  sections of the solver that you have insight for improvements.

## Various Cube Solving Sites

- https://solvethecube.com/
- https://www.speedsolving.com/wiki/index.php/Main_Page
- https://www.chessandpoker.com/rubiks-cube-solution.html
- https://www.wikihow.com/Solve-a-Rubik%27s-Cube
- https://lar5.com/cube/
- http://rubikscube.info/
- https://visihow.com/Solve_Rubik%27s_Cube

## Scripting Advice II (Cube Solving Script)

- After you have a solver that works on all cubes you try,
  make a faster solver.  Do this by creating a *new* script.
  Don't lose the one that already works.  The fail penalty is
  pretty high.
- Remember that each script file is like a function, break out
  common elements so you don't have to have duplication.
  

Report on Performance
---------------------

Write a report that includes the following information:

1- Description of an improved heuristic.
2- Statistics on the performance of the new heuristic vs the
   Facelets/20 heuristic.  Use the level-6 cube idea mentioned above.
3- Description of the cube solving technique used in the script.
4- Performance of the cube solving script.

   a- For the 100 scrambled cubes given in the previous assignment,
      how many are solved?
   b- What is the average number of nodes generated?
   c- What is the average solution cost?
   d- What is the average number of seconds to finish the script?
   e- What is the expected performance measure of your script?

Submit the report as a PDF to Canvas.

## Advice (Report)

A grading script has been added to `cs4300-code-ai-agents/prog/RubiksCube/grader/`.
Do a `git pull` to download it.  The `Makefile` has an example of how to use it.
It is assumed that you will symbolic link your solver into the `grader` directory,
store your solver script(s) there and run from there.

Additional Information
----------------------

- [Solve the Cube](https://solvethecube.com)
- [Speed Solving](https://www.speedsolving.com/wiki/index.php/Main_Page)
- [scrambled_cubes.txt](assignments/scrambled_cubes.txt)

Passoff
-------

Submit your source code by committing and pushing the repository.
Submit your report to Canvas.

