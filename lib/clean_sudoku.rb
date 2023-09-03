class CleanSudoku
    def self.clean_board(board)
        cleaned_board = board.split("\n").map do |row|
            next if row == "------+------+------"
            row = row.gsub("|", "").strip.split(" ").map do |cell|
                cell.to_i
            end
            row
        end
        cleaned_board.compact!
    end
end
  