require_relative "check_rows"
require_relative "check_columns"
require_relative "check_subgroups"
require_relative "check_completed"

class SudokuValidator
    def self.valid?(board)
        CheckColumns.valid?(board) && CheckRows.valid?(board) && CheckSubgroups.valid?(board)
    end

    def self.completed?(board)
        CheckCompleted.valid?(board)
    end
end
    
