# Ruby Challenges / Sudoku Validator

Hey there! We're [thoughtbot](https://thoughtbot.com), a design and
development consultancy that brings your digital product ideas to life.
We also love to share what we learn.

This coding exercise comes from [Upcase](https://thoughtbot.com/upcase),
the online learning platform we run. It's part of the
[Ruby Challenges](https://thoughtbot.com/upcase/ruby-challenges) course and is just one small sample of all
the great material available on Upcase, so be sure to visit and check out the rest.

## Exercise Intro

Difficulty: **Easy**

[Sudoku](http://en.wikipedia.org/wiki/Sudoku) is a logic-based combinatorial number-placement puzzle. The objective is to fill a 9×9 grid with digits so that each column, each row, and each of the nine 3×3 sub-grids that compose the grid contains all of the digits from 1 to 9.

Write a command-line program that can read a file containing a Sudoku grid and validates it. The grid can be partially or completely solved. Return either a  success message or a list of errors and their positions.

## Instructions

To start, you'll want to clone and run the setup script for the repo

    git clone git@github.com:thoughtbot-upcase-exercises/sudoku-validator.git
    cd sudoku-validator
    bin/setup

Sample usage:

```
$ ./sudoku-validator valid_complete.sudoku
  This sudoku is valid.

$ ./sudoku-validator valid_incomplete.sudoku
  This sudoku is valid, but incomplete.

$ ./sudoku-validator invalid_complete.sudoku
  This sudoku is invalid.

$ ./sudoku-validator invalid_incomplete.sudoku
  This sudoku is invalid.
```

A Sudoku is valid if:

1. It has no duplicates in a row
2. It has no duplicates in a column
3. It has no duplicates in a sub-group (the nine smaller 3x3 grids).

## Input files
The input files look like this

```
8 5 0 |0 0 2 |4 0 0
7 2 0 |0 0 0 |0 0 9
0 0 4 |0 0 0 |0 0 0
------+------+------
0 0 0 |1 0 7 |0 0 2
3 0 5 |0 0 0 |9 0 0
0 4 0 |0 0 0 |0 0 0
------+------+------
0 0 0 |0 8 0 |0 7 0
0 1 7 |0 0 0 |0 0 0
0 0 0 |0 3 6 |0 4 0
```

Important: zeros represent squares which do not have a value assigned yet. Having multiple zeroes in a row, column, or subgroup _does not_ make the puzzle invalid.

## How to know you're done

This exercise provides a set of high-level integration tests that will pass when you're done. You will very likely want to write additional unit tests to test-drive your classes.

## Tips and Tricks



## Featured Solution

Check out the [featured solution branch](https://github.com/thoughtbot-upcase-exercises/sudoku-validator/compare/featured-solution#toc) to
see the approach we recommend for this exercise.

## Forum Discussion

If you find yourself stuck, be sure to check out the associated
[Upcase Forum discussion](https://forum.upcase.com/t/ruby-challenges-sudoku-validator/4605)
for this exercise to see what other folks have said.

## Next Steps

When you've finished the exercise, head on back to the
[Ruby Challenges](https://thoughtbot.com/upcase/ruby-challenges) course to find the next exercise,
or explore any of the other great content on
[Upcase](https://thoughtbot.com/upcase).

## License

sudoku-validator is Copyright © 2015-2018 thoughtbot, inc. It is free software,
and may be redistributed under the terms specified in the
[LICENSE](/LICENSE.md) file.

## Credits

![thoughtbot](https://presskit.thoughtbot.com/assets/images/logo.svg)

This exercise is maintained and funded by
[thoughtbot, inc](http://thoughtbot.com/community).

The names and logos for Upcase and thoughtbot are registered trademarks of
thoughtbot, inc.
