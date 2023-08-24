CS 4300: Artificial Intelligence
===============================================

Assignment: PEAS Assessment of Problems
------------------------------------------------------

Complete a PEAS assessment for each of the 3 problems identified 
and briefly described in the previous assignment. The Performance
measure must have a mathematical formulation. The Environment
must be classified in each of the 7 categories with an explanation
of the class chosen. The Actuators may be described using the actions
available to an agent. The Sensors may be described using the percepts
available to an agent.


Required Submissions
------------------------

- A PDF file containing your report.

Passoff
-------

Post your submission to the Canvas assignment.

Sample Solution
---------------

CS 4300 - 3 PEAS Assessments - Ash Ketchum

The game of Pokemon GO has a system for advancing the Mega Level of individual pokemon. The mega level system uses time and mega energy to advance an individual's level. Mega energy can only be obtained by completing raids or walking tasks in the game. A useful AI agent would help plan for when to walk or raid to obtain energy, and when to use energy to advance the level. The optimal result would be maximizing the mega level of a group of pokemon in a minimal amount time, given constraints on raids and walking.

## The Performance Measure:

The following elements will be added together and then the negative of the sum will be used
to produce the performance measure. The best agent will have the greatest performance measure.
Note that the perfect score is 0, which is unobtainable, unless all pokemon are already at
maximum Mega Level.

- `1*(days to maximize mega level for all individuals)`
- `10*(kilometers walked)`
- `20*(days with more than 1 raid)`

## The Environment is:

- Observability: Partially observable. Most of the required information is available.  However, current raid information is only available for nearby gyms, and future raid information is not available.
- Uncertainty: Stochastic.  Most actions are deterministic.  However, where and when the mega raid bosses will appear is random. There are statistical models available for the frequency of raid bosses appearing.
- Duration: Sequential. The best strategy must be recalculated as raid opportunities are made available, or are missed.
- Stability: The game is dynamic, the raid bosses change with time. The pokemon mega energy countdown proceeds with time and with no action from the agent.
- Granularity: Discreet. All values, including time are discreet.  However, if we consider actions a the 1 second level, the space will be very dense. May consider 30 minute time increments.
- Participants: Multi-agent. There is a need to coordinate with other trainers to successfully complete mega raids.
- Knowledge: Known. The physics of this world are known.  The formula for the mega energy cost cooldown, etc. are all known.  Every action's outcome is known. I need to list more details about these formulas here to be complete.

## The Actions (Actuators):

- Mega evolve a pokemon. This will advance the mega level of the pokemon by one, if the pokemon has 
  not already mega evolved today. It will consume some mega energy for the pokemon species.
- Select a pokemon as the active buddy. Only one buddy is allowed at a time.
- Walk 1 km. This will reward 5 mega energy for the species of the buddy. A maximum of 10 km are allowed per day.
- Complete a mega raid. This will reward 200 mega energy for the species of the mega raid boss. 
  A maximum of 2 raids are allowed per day.  Raids can only occur between 6 am and 9 pm. A raid can
  only be accomplished if a nearby gym has an active raid, and if another trainer is willing to help complete
  the task.

## The Percepts (Sensors):

- Current mega level of each pokemon.  This is an integer in the range [0, 30].
- Current mega energy of each pokemon species.  This is an integer in the range [0, 2000].
- Date and time of last mega evolution for each pokemon. This is a time stamp with 1 second granularity.
- The current date and time. This is a time stamp with 1 second granularity.
- The current mega raid boss pokemon species.
- The current raid opportunities at nearby gyms.



A second problem assessment here.

A third problem assessment here.

