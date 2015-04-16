require "validate_columns"

describe ValidateColumns, ".call" do
  it "returns true when there are no duplicates" do
    puzzle_string =
      """
      123
      231
      312
      """

    result = described_class.call(puzzle_string)

    expect(result).to eq(true)
  end

  it "returns false when there are duplicates" do
    puzzle_string =
      """
      123
      231
      212
      """

    result = described_class.call(puzzle_string)

    expect(result).to eq(false)
  end
end

