require "grid"
require "validate_sequences"

class ValidateColumns
  def self.call(puzzle_string)
    columns = Grid.new(puzzle_string).columns
    ValidateSequences.call(columns)
  end
end
