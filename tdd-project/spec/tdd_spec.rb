require "rspec"
require "tdd"
describe Array do
  
  let(:a) { [1, 2, 2, 3, 4] }
  let(:b) { [-1, 0, 2, -2, 1] }
  let(:c) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ] }
  let(:d) { [10, 20, 300, 55, 0] }

  describe "#my_uniq" do 
    it "returns only unique elements" do 
      expect(a.my_uniq).to eq([1, 2, 3, 4])
    end
  end

  describe "#two_sum" do
    it "returns the indices of two elements that sum to 0" do 
      expect(b.two_sum).to eq([[0, 4], [2, 3]])
    end

    it "returns the indices in order they appear" do
      expect(b.two_sum).to_not eq([[2, 3], [0, 4]])
    end
  end

  describe "#my_transpose" do 
    it "transposes multiple arrays" do
      expect(c.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end

  describe "#stock_picker" do
    it "outputs the most profitable pair of days" do
        expect(d.stock_picker).to eq([0, 2])
    end
  end

  



end

