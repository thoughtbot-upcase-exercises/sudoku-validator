class SudokuRule
  def self.check_complete(grid)
    grid.all? do |row|
      row.all? { |char| char != "0" }
    end
  end

  def self.check_sequence(seq)
    non_zero_seq = seq.select { |s| s != "0" }
    non_zero_seq.size == non_zero_seq.to_set.size
  end

  def self.check_row(grid)
    grid.all? do |row|
      self.check_sequence(row)
    end
  end

  def self.check_column(grid)
    m = grid.first.size
    (0..m-1).all? do |i|
      col = grid.map { |row| row[i] }
      self.check_sequence(col)
    end
  end

  def self.check_subgrid(grid)
    n, m = grid.size, grid.first.size
    sub_range = [0..2, 3..5, 6..8]
    sub_range.all? do |range|
      sub_grid = []
      range.each do |i|
        next if i >= n
        range.each do |j|
          next if j >= m
          sub_grid << grid[i][j]
        end
      end
      self.check_sequence(sub_grid)
    end
  end
end
