class CheckRows 
    EMPTY = 0

    def self.valid?(board)
        board.each do |row|
            row.each do |cell|
                next if cell == EMPTY
                return false if row.count(cell) > 1
            end
        end
        true
    end
end