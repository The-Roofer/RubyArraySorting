require 'array_sorter'

describe ArraySorter do
    before(:each) do
        @sorter = ArraySorter.new
    end
    it "True is True" do
        expect(true).to eql true
    end

end
