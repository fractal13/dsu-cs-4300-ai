Rubik's Heuristic
---------------------------

## Description

As part of the Rubik's cube project, we discussed several
ideas for heuristics. You were required to implement
several different heuristics. This is an additional idea
for a heuristic.

The more organization in the cube colors, the closer it is to
being solved.  For this heuristic, we'll measure disorganization
as the number of colors visible on a face of the cube.

For each of the 6 faces, count the number of unique colors on the
face.  Sum these values, and divide by 4.

## Task

Add this heuristic as an option to your search problem class.
Be sure to add it such that its enumeration number is 10.
You can do this with an assignment in the enumeration
like `COLOR_COUNT_HEURISTIC=10`.

Make sure the rubik's cube solver tool can use `config heuristic 10`
to use this heuristic.

Use the tool with this heuristic and `A*` search to solve the
cubes from `verifier/solve_many_6_dl.cmd`.  Record the solution quality.

Repeat solving those cubes using your original heuristic and `A*` search
to solve the same cubes.


Pass-off
--------

## Report

Write a brief
report with the cost of solution found for each cube, and the number of nodes
generated in the search.  Submit the report to the Canvas task.

Be sure that your code with this heuristic is pushed to github.



In the exam report, record the nodes generated with each of the heuristics.
Which one appears to be better?

## Source 

Be sure that your modified code is committed and pushed to github.
