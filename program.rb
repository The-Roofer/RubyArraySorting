require_relative './lib/array_sorter'

sorter = Array_Sorter.new
system('cls')
puts "Do you want to view the [B]ubble Sort or the [I]nsertion Sort?"
response = gets.chomp.to_s.downcase
system('cls')

if response[0] == 'b'
  test_array= [rand(21),rand(21),rand(21),rand(21),rand(21),rand(21),rand(21),rand(21)]
  saved_test_array = test_array.dup

  system('cls')

  sorter.bubblesort(test_array)
  print "Initial Array: "
  saved_test_array.each do |var|
    print var.to_s+" "
  end

  puts

  print "Sorted Array: "
  test_array.each do |var|
    print var.to_s+" "
  end
  puts "\npress enter to continue"
  gets


elsif response[0] == 'i'
#system('cls')
#test_array = [rand(21),rand(21),rand(21),rand(21),rand(21),rand(21),rand(21),rand(21),rand(21)]
test_array = [8,4,1,3,0]
saved_test_array = test_array.dup
system('cls')
test_array=sorter.insertionsort(test_array)

end
