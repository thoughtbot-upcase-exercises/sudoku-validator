class CheckSubgroups
    EMPTY = 0
    
    def self.valid?(board)
        (0..2).each do |i|
            (0..2).each do |j|
                subgroup = []
                (0..2).each do |x|
                    (0..2).each do |y|
                        subgroup.push(board[i * 3 + x][j * 3 + y])
                    end
                end
                subgroup.each do |cell|
                    next if cell == EMPTY
                    return false if subgroup.count(cell) > 1
                end
            end
        end
        true
    end
end