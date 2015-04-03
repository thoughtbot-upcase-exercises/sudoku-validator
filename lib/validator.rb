require "verify_valid"
require "verify_complete"

    require "pry"
class Validator
  def initialize(puzzle_string)
    self.puzzle_string = puzzle_string
  end

  def self.validate(puzzle_string)
    new(puzzle_string).validate
  end

  def validate
    if valid? && incomplete?
      "This sudoku is valid, but incomplete."
    elsif invalid?
      "This sudoku is invalid."
    else
      "This sudoku is valid."
    end
  end

  protected

  attr_accessor :puzzle_string

  private

  def invalid?
    ! valid?
  end

  def valid?
    VerifyValid.call(puzzle_string)
  end

  def incomplete?
    ! VerifyComplete.call(puzzle_string)
  end
end
