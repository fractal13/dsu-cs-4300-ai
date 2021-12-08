Empire Agent
------------

In a sequence of 6 assignments you built an agent to play
parts of the game of empire.  Your agent was able to use
search strategies to take a country from start to a basic
economy with all sectors configured for functionality,
population maxed out and stable, and a fishing boat completely
built.

Assumptions
----------------

As a result of your work on this project you have an
agent such that:

- Either you or your agent will break sanctuary.
- Your agent will explore the island, probably using the `explore.py` tool provided during the assignments.
- Your agent will interact with the empire server, using search strategies to decide what actions to take.
- Your agent will wait until an update has occurred, then gather information, search again, and execute commands.
- Your agent will stop once all goal conditions have actually been met in the empire server.


Task Requirements
-----------------

## Requirement 1

Add to the goal state of your agent a requirement of having
at least 75 gold bars in a bank. Now the total goal requirements
are:

- All 10 sectors owned by your country.
- All 10 sectors have 1000 civilians.
- A fully built (100%) fishing boat.
- A bank with at least 75 gold bars.

## Requirement 2

Test your updated agent to verify that it is working correctly.
You can test on any of the servers you haven't used your countries
on yet, plus the three new servers created for today.

## Requirement 3

Successfully reach the goal state in a country using your agent.
Identify which server and which country were used for this 
successful run of your agent, by creating a file `GOLD.txt`
at the root of your repository that contains the port number and 
country number or name if you renamed the country.

## Requirement 4

Add, commit, and push your changes.

Additional Information
----------------------

Gold bars (`b`) can only be built in a bank (`b`) sector.
It takes 5 dust (`d`) and 5 avail to build 1 bar.

Gold dust can be obtained by mining it from a gold mine (`g`)
sector with the gold resource.  The gold resource is non-renewable.
As you mine it from the ground, the gold amount of gold resource remaining
is reduced.  For each gold resource number, 5 dust can be produced.
For example, a sector with a gold resource of 45 can produce a total
of 45*5 = 225 dust.

Other than the fact that the gold depletes, production of dust is
very similar to production of iron (`i`) from mines (`m`) with
the mineral (`min`) resource.


Additional Servers
------------------

During the empire project, you were assigned a group of country numbers
to use for development and completion of the assignment. You will use the
same country numbers as specified in the
[Canvas Discussion](https://dixie.instructure.com/courses/698595/discussion_topics/4708387).

The new servers are running on ports 2839, 2840, and 2841.


Pass Off Procedure
------------------

- Create the `GOLD.txt` file mentioned above.
- Add, commit, and push your changes to the repository.
- After the exam, your country will be inspected for meeting the goal requirements.
- After the exam, the changes in your repository during the exam period will be examined.



