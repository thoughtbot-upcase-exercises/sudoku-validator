class ParseSudoku
    def self.parse_board(board)
        parsed = board.split("\n").map do |row|
            next if row == "------+------+------"
            row = row.gsub("|", "").strip.split(" ").map { |cell| cell.to_i }
            row
        end
        parsed.compact!
    end
end
  