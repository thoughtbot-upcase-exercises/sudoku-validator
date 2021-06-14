class Grid
  def self.map_to_grid(puzzle_string)
    puzzle_string
      .split("")
      .select { |char| "0" <= char && char <= "9" }
      .each_slice(9).to_a
  end
end
