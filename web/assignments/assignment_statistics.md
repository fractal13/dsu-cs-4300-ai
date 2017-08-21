CS 3005: Programming in C++
===============================================

Statistics
------------------------

Statistics techniques are used to understand large collections
of data.  They are applied in many fields including Artificial Intelligence,
Medicine, Data Mining, Social Sciences, Machine Learning, and Physics.

The basic properties of a collection of numbers
include :

- Sum     | The total of all numbers in the collection
- Count   | The number of numbers in the collection
- Arithmetic Mean (Average) | The Sum divided by the Count
- Median                    | If the numbers were sorted, this is the value in the middle
- Minimum                   | The lowest number
- Maximum                   | The highest number

There are many more interesting properties that can be obtained using
statistics on large collections of numbers, but we will focus on
these for now.


Assignment
----------

Create a program that will calculate the six basic statistical
properties listed above on a set of numbers specified by the
user.

Your program must prompt the user for numbers.  It will collect
the numbers until the user signals there are no more numbers with
an End-Of-File command.  In Linux this is by typing `Ctrl-D`.

Your program must be prepared for up to one million double precision
floating point numbers.


Additional Documentation
------------------------

- [Stats are important](http://www.mathworksheetscenter.com/mathtips/statsareimportant.html)
- [Why Stats?](http://www.worldofstatistics.org/2013/03/04/why-statistics-is-important/)
- [Wikipedia on Statistics](https://en.wikipedia.org/wiki/Statistics)
- [Arithmetic Mean](https://en.wikipedia.org/wiki/Arithmetic_mean)
- [Median](https://en.wikipedia.org/wiki/Median)

Potential Session
------------------


    ==================================================
    $ make
    g++ -o stats stats.cpp
    $ ./stats 
    5
    -12
    34.234
    -99.99
    123.456
    6.56
    Sum:     57.26
    Count:   6
    Average: 9.54333
    Median:  5.78
    Minimum: -99.99
    Maximum: 123.456
    ==================================================


Show Off Your Work
------------------------

To receive credit for this assignment, you must upload
the source code (.cpp file) and the Makefile
to the Canvas submission system.

Additionally, the program must build, run and give
correct output.


Extra Challenges (Not Required)
-------------------------------

- Add additional statistical properties such as standard deviation.
- Read the numbers from a text file, instead of forcing the user to type them all.
- Save the results in a text file, instead of displaying them for the user.

Grading Notes
-------------

[Grading Notes](statistics-PASSOFF-NOTES.php)
