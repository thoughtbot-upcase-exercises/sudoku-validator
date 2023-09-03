require_relative "clean_sudoku"
require_relative "display_output"
require_relative "check_sudoku"

class Validator
  def initialize(puzzle_string)
    @puzzle_string = puzzle_string
  end

  def self.validate(puzzle_string)
    new(puzzle_string).validate
  end

  def validate
    board = CleanSudoku.clean_board(@puzzle_string)
    valid = SudokuValidator.valid?(board)
    completed = SudokuValidator.completed?(board)
    
    DisplayOutput.print_result(valid, completed)
  end
end
