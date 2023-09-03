require_relative "clean_sudoku"
require_relative "output"
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
    
    # Output.print_result(valid, completed)
    Output.return_result(valid, completed)
    
  end
end
