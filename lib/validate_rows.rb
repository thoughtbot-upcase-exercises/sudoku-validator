require "grid"
require "validate_sequences"

class ValidateRows
  def self.call(puzzle_string)
    rows = Grid.new(puzzle_string).rows
    ValidateSequences.call(rows)
  end
end
