require 'array_sorter'

describe ArraySorter do
    before(:each) do  
        @sorter = ArraySorter.new
        end

    describe ".bubblesort" do

  context "Given [2, 3, 1]" do
    it "Returns [1, 2, 3]" do
      expect(@sorter.bubblesort([2, 3, 1])).to eql [1, 2, 3]
    end
  end

  context "Given [3, 2, 1]" do
    it "Sorts to [1, 2, 3]" do
      expect(@sorter.bubblesort([3, 2, 1])).to eql [1, 2, 3]
    end
  end

  context "Given [1, 2, 3, 4]" do
    it "Sorts to [1, 2, 3, 4]" do
      expect(@sorter.bubblesort([1, 2, 3, 4])).to eql [1, 2, 3, 4]
    end
  end
  context "Given [4, 3, 2, 1]" do
    it "Sorts to [1, 2, 3, 4]" do
      expect(@sorter.bubblesort([4, 3, 2, 1])).to eql [1, 2, 3, 4]
    end
  end
  context "Given [a, b, c, d]" do
    it "Sorts to [a, b, c, d]" do
      expect(@sorter.bubblesort(['a', 'b', 'c', 'd'])).to eql ['a', 'b', 'c', 'd']
    end
  end
  context "Given [b, a, d, c]" do
    it "Sorts to [a, b, c, d]" do
      expect(@sorter.bubblesort(['b', 'a', 'd', 'c'])).to eql ['a', 'b', 'c', 'd']
    end
  end



        end

        end

