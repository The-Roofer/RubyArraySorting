RED = "\e[31m"
GREEN = "\e[32m"
YELLOW = "\e[33m"
BLUE = "\e[34m"
MAGENTA = "\e[35m"
CYAN = "\e[36m"
RESET = "\e[0m" 

class Array_Sorter

  def bubblesort array
    swap = true
    while swap
      swap=false
        array.each_with_index do |var,index|
          if index < array.size-1  && var > array[index+1]
            swap = true
            temp = array[index+1]
            array[index+1] = var
            array[index] = temp
            print_array_bubble(array,var)
            sleep 0
            #system('cls')
          end
        end
        
      end
      return array
      
  end #end bubblesort
    
    
  def print_array_bubble(array,swapper)

    puts "Sorting Array with Bubble Sort"
    array.each do |var|
      if var == swapper
      print "#{GREEN}#{swapper} #{RESET}"
      else
      print var.to_s+" "
      end
    end
    puts
  end #end print bubblesort




  def print_key_being_removed (array,indexofkey)
    shadow_array = Array.new(array.size,' ')
    string_array = Array.new(array.size,' ')

    array.each_with_index do |num,index|
      if index==indexofkey
        print " "
        string_array[index] = ' '                   ## makes an array called string array with a hole in it
        
      else
        print num.to_s+" "    
        string_array[index]= num.to_s
      end
    end

    puts

    shadow_array.each_with_index do |element,index|     #makes a mostly empty array called shadow array that only has the key in it

      if index==indexofkey
        print "#{GREEN}#{element.to_s} #{RESET}"
        shadow_array[index] = indexofkey.to_s
      end

      print element.to_s + " "
    end

    gets
    print_elements_shifting(array,shadow_array,string_array,indexofkey)
  end #end of print_key_being_removed


  def print_elements_shifting(array,shadow_array,string_array,indexofkey)
    puts "index of key:"+indexofkey.to_s
    
    string_array.each do |pos|
      print pos + " "
    end

    puts

    shadow_array.each do |pos|
      print "#{GREEN}#{pos} #{RESET}"
    end
    gets

  end





  def insertionsort array
    array.each_with_index do |var,index| 
        if index == 0

          next

        elsif var < array[index-1]
          #print_key_being_removed(array,index)

          key = var
          insertPosition = index
     

          sleep 0
          #system('cls')

          while insertPosition > 0 && array[insertPosition - 1 ] > key     # while loop shifts element down
            #print_elements_shifting

            array[insertPosition] = array[insertPosition-1]
            insertPosition -= 1

            #print_array_insertion(array,key)
            
          end #end while loop

          array[insertPosition] = key

        end #elsifs
        
      end #end .each do
      
    return array
      
      
  end #end insertionsort
    
  def print_insertion_sort(array,key)
    puts "Sorting Array with Insertion Sort"
    array.each do |var|
      if var == key
      print "#{GREEN}#{key} #{RESET}"
      else
      print var.to_s+" "
      end
    end
    puts

  end

    
end #end class _

