class CheckCompleted 
    def self.valid?(board)
        board.flatten.count(0) == 0
    end
end