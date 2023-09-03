class Output 
    def self.print_result(valid, complete)
        case [valid, complete]
        when [true, true]
            puts "This sudoku is valid."
        when [true, false]
            puts "This sudoku is valid, but incomplete."
        else
            puts "This sudoku is invalid."
        end
    
    end

    def self.return_result(valid, complete)
        case [valid, complete]
        when [true, true]
            "This sudoku is valid."
        when [true, false]
            "This sudoku is valid, but incomplete."
        else
            "This sudoku is invalid."
        end
    end
end