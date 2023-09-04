class CheckCompleted 
    EMPTY = 0

    def self.valid?(board)
        board.flatten.count(EMPTY) == 0
    end
end