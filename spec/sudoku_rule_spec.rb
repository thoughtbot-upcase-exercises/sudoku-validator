require_relative "../lib/sudoku_rule"

describe "SudokuRule" do
  valid_grid = [
    ["8", "5", "9", "6", "1", "2", "4", "3", "7"],
    ["7", "2", "3", "8", "5", "4", "1", "6", "9"],
    ["1", "6", "4", "3", "7", "9", "5", "2", "8"],
    ["9", "8", "6", "1", "4", "7", "3", "5", "2"],
    ["3", "7", "5", "2", "6", "8", "9", "1", "4"],
    ["2", "4", "1", "5", "9", "3", "7", "8", "6"],
    ["4", "3", "2", "9", "8", "1", "6", "7", "5"],
    ["6", "1", "7", "4", "2", "5", "8", "9", "3"],
    ["5", "9", "8", "7", "3", "6", "2", "4", "1"]
  ]
  invalid_grid = [
    ["8", "8", "0", "6", "1", "2", "4", "3", "7"],
    ["8", "2", "3", "8", "5", "4", "1", "6", "9"],
    ["1", "6", "4", "3", "7", "9", "5", "2", "8"],
    ["9", "8", "6", "1", "4", "7", "3", "5", "2"],
    ["3", "7", "5", "2", "6", "8", "9", "1", "4"],
    ["2", "4", "1", "5", "9", "3", "7", "8", "6"],
    ["4", "3", "2", "9", "8", "1", "6", "7", "5"],
    ["6", "1", "7", "4", "2", "5", "8", "9", "3"],
    ["5", "9", "8", "7", "3", "6", "2", "4", "1"]
  ]

  describe ".check_complete" do
    it "returns if grid has no '0'" do
      expect(SudokuRule.check_complete(invalid_grid)).to be_falsy
      expect(SudokuRule.check_complete(valid_grid)).to be_truthy
    end
  end

  describe ".check_sequence" do
    it "returns if a sequence has non empty duplicate" do
      full_seq = ["1", "2", "3", "4"]
      has_empty_seq = ["1", "0", "3", "4"]
      has_dup_seq = ["1", "1"]

      expect(SudokuRule.check_sequence(has_dup_seq)).to be_falsy
      expect(SudokuRule.check_sequence(has_empty_seq)).to be_truthy
      expect(SudokuRule.check_sequence(full_seq)).to be_truthy
    end
  end

  describe ".check_row" do
    it "returns if all rows satisfy sudoku row rule" do
      expect(SudokuRule.check_row(invalid_grid)).to be_falsy
      expect(SudokuRule.check_row(valid_grid)).to be_truthy
    end
  end

  describe ".check_col" do
    it "returns if all columns satisfy sudoku column rule" do
      expect(SudokuRule.check_column(invalid_grid)).to be_falsy
      expect(SudokuRule.check_column(valid_grid)).to be_truthy
    end
  end

  describe ".check_subgrid" do
    it "returns if all sub grid satisfy sudoku 3x3 subgrid rule" do
      expect(SudokuRule.check_subgrid(invalid_grid)).to be_falsy
      expect(SudokuRule.check_subgrid(valid_grid)).to be_truthy
    end
  end
end
