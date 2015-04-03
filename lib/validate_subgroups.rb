require "validate_sequences"

class ValidateSubgroups
  def self.call(puzzle_string)
    subgroups = Grid.new(puzzle_string).subgroups
    ValidateSequences.call(subgroups)
  end
end
