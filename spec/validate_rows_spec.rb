require "validate_rows"

describe ValidateRows, ".call" do
  specify do
    puzzle_string = "123456789\n112345678"

    result = described_class.call(puzzle_string)

    expect(result).to eq(false)
  end

  specify do
    puzzle_string = "123456789\n987654321"

    result = described_class.call(puzzle_string)

    expect(result).to eq(true)
  end
end

