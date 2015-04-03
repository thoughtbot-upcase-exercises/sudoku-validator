class VerifyComplete
  def self.call(puzzle_string)
    ! puzzle_string.include?("0")
  end
end
