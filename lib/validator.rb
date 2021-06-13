require "grid"
require "sudoku_rule"

class Validator
  def initialize(puzzle_string)
    @puzzle_string = puzzle_string
  end

  def self.validate(puzzle_string)
    new(puzzle_string).validate
  end

  INVALID_VERDICT = "This sudoku is invalid."
  INCOMPLETE_VERDICT = "This sudoku is valid, but incomplete."
  VALID_VERDICT = "This sudoku is valid."

  def validate
    grid = Grid.map_to_grid(@puzzle_string)
    if !SudokuRule.check_row(grid) ||
           !SudokuRule.check_column(grid) ||
           !SudokuRule.check_subgrid(grid)
      INVALID_VERDICT
    elsif !SudokuRule.check_complete(grid)
      INCOMPLETE_VERDICT
    else
      VALID_VERDICT
    end
  end
end
