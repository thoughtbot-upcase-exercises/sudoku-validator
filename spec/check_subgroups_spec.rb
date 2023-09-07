require_relative "../lib/check_subgroups"

describe CheckSubgroups do
    it "returns true if 3x3 subgroups do not contain duplicates" do
        valid_sudoku = [
            [1,2,3,4,5,6,7,8,9],
            [9,8,7,6,5,4,3,2,1],
            [4,5,6,7,8,9,1,2,3],
            [3,1,2,8,4,7,9,5,6],
            [6,9,5,2,1,3,8,7,4],
            [8,7,4,5,9,6,2,1,3],
            [5,3,1,9,6,2,4,8,7],
            [2,4,8,3,7,1,6,9,5],
            [7,6,9,1,2,8,5,3,4]
        ]
        expect(CheckSubgroups.valid?(valid_sudoku)).to be false
    end

    it "returns false if 3x3 subgroups contain duplicates" do
        invalid_sudoku = [
            [1,2,3,4,5,6,7,8,9],
            [9,8,7,6,5,4,3,2,1],
            [4,5,6,7,8,9,1,2,3],
            [3,1,2,8,4,7,9,5,6],
            [6,9,5,2,1,3,8,7,4],
            [8,7,4,5,9,6,2,1,3],
            [5,3,1,9,6,2,4,8,7],
            [2,4,8,3,7,1,6,9,5],
            [7,6,9,1,2,8,5,3,4]
        ]
        expect(CheckSubgroups.valid?(invalid_sudoku)).to be false
    end
end
