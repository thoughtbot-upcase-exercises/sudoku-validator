def clean_board(board)
    cleaned_board = board.split("\n").map do |row|
        next if row == "------+------+------"
        row = row.gsub("|", "").strip.split(" ").map do |cell|
            cell.to_i
        end
        row
    end
    cleaned_board.compact!
end

def check_rows(row)
    row.each do |cell|
        next if cell == 0
        return false if row.count(cell) > 1
    end
    true
end

def check_columns(board)
    board.each do |row|
        row.each_with_index do |cell, index|
            next if cell == 0
            column = board.map do |row|
                row[index]
            end
            return false if column.count(cell) > 1
        end
    end
    true
end

def check_subgroups(board)
    (0..2).each do |i|
        (0..2).each do |j|
            subgroup = []
            (0..2).each do |x|
                (0..2).each do |y|
                    subgroup.push(board[i * 3 + x][j * 3 + y])
                end
            end
            subgroup.each do |cell|
                next if cell == 0
                return false if subgroup.count(cell) > 1
            end
        end
    end
    true
end

def validate_sudoku(board)
    cleaned_board = clean_board(board)
    completed = cleaned_board.flatten.count(0) == 0

    valid = check_rows(cleaned_board) && check_columns(cleaned_board) && check_subgroups(cleaned_board)
    
    case [valid, completed]
    when [true, true]
        puts "This sudoku is valid."
    when [true, false]
        puts "This sudoku is valid, but incomplete."
    else
        puts "This sudoku is invalid."
    end
end

Dir.glob('spec/fixtures/*.sudoku') do |file|
    File.open(file) do |f|
        content = f.read
        validate_sudoku(content)
    end
end


