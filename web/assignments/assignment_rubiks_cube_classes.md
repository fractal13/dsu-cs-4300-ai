CS 4300: Artificial Intelligence
===============================================

Assignment: Rubik's Cube Search Classes
-----------------------------------

This assignment is built on top of the previous assignment.
You will now move your Rubik's Cube class into the AI search
library framework, and begin to implement the search related
classes.

This assignment requires you to clone the course source code
git repository into an environment compatible with Ubuntu 16.04.
This can be accomplished with a native installation, a virtual
machine or the Windows Subsystem for Linux.


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

Required Build System
----------------------

- Configure the build system to recognize your files in `cs4300-code-ai-agents/build/linux/prog/RubiksCube/Makefile.RubiksCubeSolver`.

Required Functionality
----------------------

- Your code must compile, and be as close to correct as possible.
- No executable program is required at this stage.

Passoff
-------

Submit your source code from `cs4300-code-ai-agents/prog/RubiksCube` to Canvas.

