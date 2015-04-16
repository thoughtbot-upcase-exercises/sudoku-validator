require "validate_rows"

describe ValidateRows, ".call" do
  it "returns true when there are no duplicates" do
    puzzle_string = "123456789\n987654321"

    result = described_class.call(puzzle_string)

    expect(result).to eq(true)
  end

  it "returns false when there are duplicates" do
    puzzle_string = "123456789\n112345678"

    result = described_class.call(puzzle_string)

    expect(result).to eq(false)
  end
end

