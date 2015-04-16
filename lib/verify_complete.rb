class VerifyComplete
  INCOMPLETE_SQUARE_INDICATOR = "0"

  def self.call(puzzle_string)
    ! puzzle_string.include?(INCOMPLETE_SQUARE_INDICATOR)
  end
end
