require "grid"

describe Grid, ".from_puzzle_string" do
  it "parses the puzzle string into an array of row arrays" do
    puzzle_string =
      """
      1 2 3
      4 5 6
      7 8 9
      """.strip

    result = described_class.new(puzzle_string).rows

    expect(result).to eq(
      [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
      ]
    )
  end

  it "ignores vertical separators" do
    puzzle_string =
      """
      123|456
      123|456
      123|456
      """.strip

      result = described_class.new(puzzle_string).rows

    expect(result).to eq(
      [
        [1, 2, 3, 4, 5, 6],
        [1, 2, 3, 4, 5, 6],
        [1, 2, 3, 4, 5, 6]
      ]
    )
  end

  it "ignores hozizontal separators" do
    puzzle_string =
      """
      123|456
      ---+---
      123|456
      """.strip

    result = described_class.new(puzzle_string).rows

    expect(result).to eq(
      [
        [1, 2, 3, 4, 5, 6],
        [1, 2, 3, 4, 5, 6]
      ]
    )
  end
end
