class ExtractSubgroups
  def self.call(*args)
    new(*args).call
  end

  def initialize(grid)
    self.grid = grid
  end

  def call
    [
      subgroup_with_origin(0, 0),
      subgroup_with_origin(3, 0),
      subgroup_with_origin(6, 0),
      subgroup_with_origin(0, 3),
      subgroup_with_origin(3, 3),
      subgroup_with_origin(6, 3),
      subgroup_with_origin(0, 6),
      subgroup_with_origin(3, 6),
      subgroup_with_origin(6, 6),
    ]
  end

  protected

  attr_accessor :grid

  private

  def subgroup_with_origin(x, y)
    result = []
    (x..x + 2).each do |i|
      (y..y + 2).each do |j|
        result << grid[i][j]
      end
    end
    result
  end
end
