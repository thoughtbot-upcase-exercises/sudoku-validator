class CheckColumns 
    EMPTY = 0

    def self.valid?(board)
        board.each do |row|
            row.each_with_index do |cell, index|
                next if cell == EMPTY
                column = board.map do |row|
                    row[index]
                end
                return false if column.count(cell) > 1
            end
        end
        true
    end
end