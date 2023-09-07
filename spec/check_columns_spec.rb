require_relative "../lib/check_columns"

describe CheckColumns do
    it "returns true if column contains a duplicate" do
        board = [[1,2,3,4,5,6,7,8,9], [9,8,7,6,0,4,3,2,1]]
        expect(CheckColumns.valid?(board)).to be true
    end

    it "returns false if column contains a duplicate" do
        board = [[1,2,3,4,5,6,7,8,9], [1,0,2,3,0,4,6,7,9]]
        expect(CheckColumns.valid?(board)).to be false
    end
end