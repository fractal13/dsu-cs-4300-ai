Team Draft
------------

In the team drafting assignment, you created an agent to recommend strong
teams of pokemon to compete in tournaments.

Assumptions
----------------

As a result of your work on this project you have an
agent such that:

- Your agent will use a variation of local search.
- Your agent will run for not more than 120 seconds per problem.
- Your agent will display the 5 best teams found, and their utility.
- The utility your agent uses is as described in the assignment: 
  "For each pokemon allowed in the tournament, find the team member pokemon with the second best score vs the tournament pokemon.  
  This is the team's score vs that one pokemon.  Find the minimum of these scores.  That is the team's utility."


Task Requirements
-----------------

## Requirement 1

Make a modified version of your agent that uses a new utility.
The utility is 
"For each pokemon allowed in the tournament, find the two team member pokemon with the best scores vs the tournament pokemon.
Take the average of these scores. This is the team's score vs that one pokemon.  Find the minimum of these scores.  
That is the team's utility."

## Requirement 2

Find 3 good teams for each of the two tournaments you have data for, using this new utility.

## Requirement 3

Create a file `PIKACHU.txt` in the root of your repository with the
3 teams found for each tournament, and their utilities. Also include
clear instructions how I would run your agent to get similar
results.

## Requirement 4

Add, commit, and push your changes.  This includes the `PIKACHU.txt`
file.

Pass Off Procedure
------------------

- Create the `PIKACHU.txt` file mentioned above.
- Add, commit, and push your changes to the repository.
- After the exam, the utility of the teams provided will be checked.
- After the exam, your agent will be used to generate a few more teams.
