require "rspec"
require "towers"
describe Towers do
    let(:g1) {Towers.new}
    let(:g2) {Towers.new}
    describe "#intialize" do 
        it "returns array with length of three" do
            expect(g1.towers.length).to eq(3)
        end

        it "the first array contains three disks" do
            expect(g1.towers[0]).to eq([3, 2, 1])
        end
        it "sets the moves to 0" do
            expect(g1.moves).to eq(0)
        end
    end
    
    let (:a) {[[],[1,2,3],[]]}
    let (:b) {[[1,2,3],[],[]]}

    describe "#full?" do
        context "When the tower is full" do
            it "returns true" do
                expect(g1.full?(a)).to eq(true)
            end
        end
        context "When the tower is not full" do
            it "returns false" do
                expect(g1.full?(b)).to eq(false)
            end
        end
    end

  let (:d) {[3,2]}
  let (:e) {[1]}
  let (:f) {[]}
  describe "#move" do 
    context "when it is a valid move" do 
      it "returns true" do
        expect(g1.move(f, d)).to eq(true)
      end
    end

    context "when it is an invalid move" do 
      it "returns false" do
        expect(g1.move(e, d)).to eq(false)
      end
    end
  end

  describe "#win?" do 
    context "if the game is won" do 
      it "checks to see if the towers are full" do 
        expect(g1).to receive(full?)
      end
    end
  end
end