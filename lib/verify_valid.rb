require "validate_rows"
require "validate_columns"
require "validate_subgroups"

class VerifyValid
  def self.call(puzzle_string)
    valid_rows = ValidateRows.call(puzzle_string)
    valid_columns = ValidateColumns.call(puzzle_string)
    valid_subgroups = ValidateSubgroups.call(puzzle_string)

    valid_rows && valid_columns && valid_subgroups
  end
end
