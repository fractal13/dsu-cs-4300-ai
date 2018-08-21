CS 4300: Artificial Intelligence
===============================================

Assignment: Rubik's Cube Search Class Unit Tests
------------------------------------------------

This assignment is built on top of the previous assignment.
You will now create unit tests for your 3 AI search library
classes.  Note it is expected that you will fix any code
defects detected by the unit tests.  If you find errors
independent of a unit test, consider writing a test for it,
in case the error resurfaces at a later time.

Required Code
------------------------

- Create unit test implementation files in `cs4300-code-ai-agents/prog/RubiksCube/tests`.
- At a minimum, there should be a test for every possible outcome of every method
  of every class.
- Consider using different unit test .cpp files for different purposes.  For example,
  `test_search_action.cpp` might be useful for holding the unit tests of the
  `Action` class.

Required Build System
----------------------

- Configure the build system to recognize your tests in `cs4300-code-ai-agents/build/linux/prog/RubiksCube/Makefile.RubiksCubeUnitTests`.
- Include your non-test .cpp and .h files in the Makefile.

Required Functionality
----------------------

- Your code and tests must compile.
- The unit tests must all pass.

Passoff
-------

Submit your source code from `cs4300-code-ai-agents/prog/RubiksCube` to Canvas.
This should include the contents of the `tests` subdirectory.


