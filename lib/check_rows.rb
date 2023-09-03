class CheckRows 
    def self.valid?(board)
        board.each do |cell|
            next if cell == 0
            false if board.count(cell) > 1
        end
        true
    end
end