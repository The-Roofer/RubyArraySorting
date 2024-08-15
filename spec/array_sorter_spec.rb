require 'array_sorter'

describe Array_Sorter do
    before(:each) do  
        @sorter = Array_Sorter.new
        end

    describe ".bubblesort" do

      context "An array of 3 unsorted integers" do
        it "Returns them sorted" do
          expect(@sorter.bubblesort([2, 3, 1])).to eql [1, 2, 3]
        end
      end

      context "An array of integers in reverse order" do
        it "returns them sorted" do
          expect(@sorter.bubblesort([3, 2, 1])).to eql [1, 2, 3]
        end
      end

      context "Given an array of sorted integers" do
        it "Returns them sorted" do
          expect(@sorter.bubblesort([1, 2, 3, 4])).to eql [1, 2, 3, 4]
        end
      end

      context "Given N unsorted integers" do
        it "Return them sorted" do
          expect(@sorter.bubblesort([4, 3, 2, 1])).to eql [1, 2, 3, 4]
        end
      end

      context "Given an array with duplicate elements" do
        it "returns the array sorted" do
          expect(@sorter.bubblesort([5, 6, 5, 1])).to eql [1, 5, 5, 6]
        end
      end

      context "Given an array with negative integers" do
        it "Return them in order and not break" do
          expect(@sorter.bubblesort([-2, -1, -7, -3])).to eql [-7, -3, -2, -1]
        end
      end
      context "An array of sorted Characters" do
        it "returns a sorted array of characters" do
          expect(@sorter.bubblesort(['a', 'b', 'c', 'd'])).to eql ['a', 'b', 'c', 'd']
        end
      end
      context "Given an array of 4 unsorted characters" do
        it "Returns them in order" do
          expect(@sorter.bubblesort(['b', 'a', 'd', 'c'])).to eql ['a', 'b', 'c', 'd']
        end
      end      


      context "Given an array of strings" do
        it "doesnt break and returns them in order" do
          expect(@sorter.bubblesort(["dog", "cat", "bird", "ant"])).to eql ["ant", "bird", "cat", "dog"]
        end
      end 

    end

    describe ".insertionsort" do

      context "Given an array of N unsorted integers" do
        it "Returns them in order" do
          expect(@sorter.insertionsort([1, 4, 3, 2])).to eql [1, 2, 3, 4]
        end
      end   

      context "Given an array of all zeros" do
        it "doesnt break" do
          expect(@sorter.insertionsort([0, 0, 0, 0])).to eql [0, 0, 0, 0]
        end
      end     

      context "Given an array with duplicate elements" do
        it "doesnt break and returns them in order" do
          expect(@sorter.insertionsort([5, 5, 2, 1])).to eql [1, 2, 5, 5]
        end
      end    

      context "Given an array already in order" do
        it "doesnt break and returns them in order" do
          expect(@sorter.insertionsort([1, 2, 3, 4])).to eql [1, 2, 3, 4]
        end
      end  
      
      context "Given an array of characters" do
        it "doesnt break and returns them in order" do
          expect(@sorter.insertionsort(['d', 'b', 'c', 'a'])).to eql ['a', 'b', 'c', 'd']
        end
      end 

      context "Given an array of strings" do
        it "doesnt break and returns them in order" do
          expect(@sorter.insertionsort(["dog", "cat", "bird", "ant"])).to eql ["ant", "bird", "cat", "dog"]
        end
      end 

    end #end describe insertion sort
end


