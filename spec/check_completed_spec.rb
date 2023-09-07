require_relative "../lib/check_completed"

describe CheckCompleted do
    it "returns true if board does not contain any 0s" do 
        board = [[1,2,3,4,5,6,7,8,9], [9,8,7,6,5,4,3,2,1]]
        expect(CheckCompleted.valid?(board)).to be true
    end

    it "returns false if board contains 0s" do
        board = [[1,2,3,4,5,6,7,8,9], [9,8,7,6,0,4,3,2,1]]
        expect(CheckCompleted.valid?(board)).to be false
    end
end