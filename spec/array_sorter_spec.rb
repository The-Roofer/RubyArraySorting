require 'array_sorter'

describe ArraySorter do
    before(:each) do
        @sorter = ArraySorter.new
    end
    it "True is True" do
        expect(true).to eql true
    end

    it "Sorts [2,3,1]" do
    expect(@sorter.sort([2,3,1])).to eql [1,2,3]
    end

end
