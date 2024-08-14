require_relative '../lib/array_sorter'

class Program

    sorter = ArraySorter.new
    # array= [12,1,3,5,4,13,28,2]
    # array.each do |var|
    # print var.to_s+" "
    # end
    # puts
    # sorter.bubblesort(array)
    # array.each do |var|
    #   print var.to_s+" "
    # end
    
    array2 = [4,3,2,1]
    print "Starting array: "
    array2.each do |num|
      print num.to_s+" "
    end
    puts
    array2=sorter.insertionsort(array2)
    puts "Ending Array"
    array2.each do |num|
      print num.to_s+" "
    end

end

# Create an instance of Program to run the code
Program.new
