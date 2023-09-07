require_relative "../lib/check_rows"

describe CheckRows do
    it "returns true if row contains a duplicate" do
        board = [[1,2,3,4,5,6,7,8,9], [9,0,2,3,0,4,6,7,8]]
        expect(CheckRows.valid?(board)).to be true
    end

    it "returns false if row contains a duplicate" do
        board = [[1,2,3,4,5,6,7,8,9], [9,0,2,2,0,4,6,7,8]]
        expect(CheckRows.valid?(board)).to be false
    end
end