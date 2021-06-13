class SudokuRule
  NUMS = ["1", "2", "3", "4", "5", "6", "7", "8", "9"].freeze

  def self.check_complete(grid)
    grid.all? do |row|
      row.all? { |char| char != "0" }
    end
  end

  def self.check_row(grid)
    grid.all? do |row|
      NUMS.all? { |n| row.include? n }
    end
  end

  def self.check_column(grid)
    m = grid.first.size
    (0..m-1).all? do |i|
      col = grid.map { |row| row[i] }
      NUMS.all? { |n| col.include? n }
    end
  end

  def self.check_subgrid(grid)
    n, m = grid.size, grid.first.size
    sub_range = [0..2, 3..5, 6..8]
    sub_range.all? do |range|
      seq = []
      range.each do |i|
        next if i >= n
        range.each do |j|
          next if j >= m
          seq << grid[i][j]
        end
      end
      NUMS.all? { |n| seq.include? n }
    end
  end
end
