require "grid"

# "8 5 9 |6 1 2 |4 3 7\n7 2 3 |8 5 4 |1 6 9\n1 6 4 |3 7 9 |5 2 8\n------+------+------\n9 8 6 |1 4 7 |3 5 2\n3 7 5 |2 6 8 |9 1 4\n2 4 1 |5 9 3 |7 8 6\n------+------+------\n4 3 2 |9 8 1 |6 7 5\n6 1 7 |4 2 5 |8 9 3\n5 9 8 |7 3 6 |2 4 1\n"

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
        [1,2,3],
        [4,5,6],
        [7,8,9]
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
        [1,2,3,4,5,6],
        [1,2,3,4,5,6],
        [1,2,3,4,5,6]
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
        [1,2,3,4,5,6],
        [1,2,3,4,5,6],
      ]
    )
  end
end
