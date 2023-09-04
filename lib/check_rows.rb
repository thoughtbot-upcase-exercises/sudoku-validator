class CheckRows 
    EMPTY = 0

    def self.valid?(board)
        board.each do |cell|
            next if cell == EMPTY
            false if board.count(cell) > 1
        end
        true
    end
end