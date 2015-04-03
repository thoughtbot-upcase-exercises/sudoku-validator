require "validate_columns"

describe ValidateColumns, ".call" do
  specify do
    puzzle_string =
      """
      123
      231
      312
      """

    result = described_class.call(puzzle_string)

    expect(result).to eq(true)
  end

  specify do
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

