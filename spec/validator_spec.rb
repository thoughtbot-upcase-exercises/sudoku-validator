require "validator"

describe Validator do
  specify do
    puzzle_string = double(:puzzle_string)
    allow(VerifyValid).to receive(:call).with(puzzle_string) { true }
    allow(VerifyComplete).to receive(:call).with(puzzle_string) { true }

    result = Validator.validate(puzzle_string)

    expect(result).to eq("This sudoku is valid.")
  end

  specify do
    puzzle_string = double(:puzzle_string)
    allow(VerifyValid).to receive(:call).with(puzzle_string) { true }
    allow(VerifyComplete).to receive(:call).with(puzzle_string) { false }

    result = Validator.validate(puzzle_string)

    expect(result).to eq("This sudoku is valid, but incomplete.")
  end

  specify do
    puzzle_string = double(:puzzle_string)
    allow(VerifyValid).to receive(:call).with(puzzle_string) { false }

    result = Validator.validate(puzzle_string)

    expect(result).to eq("This sudoku is invalid.")
  end
end
