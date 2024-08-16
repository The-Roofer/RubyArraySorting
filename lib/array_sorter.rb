RED = "\e[31m"
GREEN = "\e[32m"
YELLOW = "\e[33m"
BLUE = "\e[34m"
MAGENTA = "\e[35m"
CYAN = "\e[36m"
RESET = "\e[0m" 

TESTING = false


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
            if !TESTING
              sleep 1
              system('cls')
            end
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
  
  def print_banner
    puts "Sorting with insertion sort\n"
  end
  
  def animate_swap (array,indexofkey,offset)
    system('cls')
    print_banner

    shadow_array = Array.new(array.size,' ')
    string_array = Array.new(array.size,' ')
    key_value = array[indexofkey]
    i = 0

    while i < indexofkey
      if(i<indexofkey)
        system ('cls')
        print_banner
      end

          array.each_with_index do |element,index|
        if index <= i
          print "#{GREEN}#{element.to_s} #{RESET}"
        else
          print element.to_s+" "
        end
      end
      puts "\n\nFinds unsorted number\n\n\n"
      sleep 1 

      i += 1
    end

    system('cls')
    print_banner

    array.each_with_index do |element,index|
      if index < indexofkey
        print "#{GREEN}#{element.to_s} #{RESET}"
      elsif index == indexofkey
        print "#{CYAN}#{element.to_s} #{RESET}"
      else
        print element.to_s+" "
      end
    end

    puts "\n\nFinds unsorted number\n\n\n"
    sleep 2

    #gets
    system('cls')
    print_banner

    array.each_with_index do |num,index|
      if index==indexofkey
        print "  "
        shadow_array[index] = num             ## makes an array called string array with a hole in it
        string_array[index] = ' '  

      elsif index < indexofkey
        print "#{GREEN}#{num.to_s} #{RESET}" 
        string_array[index] = num
        shadow_array[index]= ' '

      else
        print num.to_s+" "    
        string_array[index] = num
        shadow_array[index]= ' '
      end
    end

    
    puts
    
    shadow_array.each_with_index do |element,index|     #makes a mostly empty array called shadow array that only has the key in it
      if index==indexofkey
        print "#{CYAN}#{element.to_s} #{RESET}"
      else
        print element.to_s + " "
        
      end
    end
    puts "\nPops it out and stores as a temp\n\n\n"
    #gets
    
    
    sleep 2
    system('cls')
    print_banner
    
    
    for i in (indexofkey).downto(offset+1)
      if i != 0
        temp = string_array[i]
        string_array[i]=string_array[i-1]
        string_array[i-1] = temp
      end
    end

    
    string_array.each_with_index do |var,index|
      if index <= indexofkey
        print "#{GREEN}#{var.to_s} #{RESET}"
      else
      print var.to_s+" "
      end
    end
    
    puts
    
    shadow_array.each_with_index do |element,index|
      if index==indexofkey
        print "#{CYAN}#{element.to_s} #{RESET}"
      else
        print element.to_s + " "
      end
      
    end
    puts "\nCompares key to sorted elements to find insertion point\n\n\n"
    sleep 2
    #gets
    
    system('cls')
    print_banner

    shadow_array[offset] = key_value
    shadow_array[indexofkey] = " "
   
    
    string_array.each_with_index do |pos,index|
      if index <= indexofkey
        print "#{GREEN}#{pos.to_s} #{RESET}"
      else

      print pos.to_s + " "           
      end
    end

    puts

    shadow_array.each_with_index do |element,index|
      if index==offset
        print "#{CYAN}#{element.to_s} #{RESET}"
        #shadow_array[index] = indexofkey.to_s
      else
        print element.to_s + " "

      end

    end

    puts "\nShifts unsorted number over to insertion point\n\n\n"
    sleep 2
    system('cls')
    print_banner

    string_array[offset] = key_value.to_s

    string_array.each_with_index do |num,index|
      if index <= indexofkey
        print "#{GREEN}#{num.to_s} #{RESET}"
      else
        print num.to_s+ " "
      end
    end

  puts

  puts "\nInserts number into insertion point\n\n\n"
  sleep 2
  end

  def insertionsort array
    array.each_with_index do |var,index| 
      arraydup = array.dup
        if index == 0
          next

        elsif var < array[index-1]

          offset = 0
          
          key = var
          insertPosition = index
          
          if !TESTING
            sleep 1
            system('cls')
          end

          offset = 0
          while insertPosition > 0 && array[insertPosition - 1 ] > key     # while loop shifts element down
            
            array[insertPosition] = array[insertPosition-1]
            insertPosition -= 1
            offset += 1

          end #end while loop

          
          array[insertPosition] = key
          
          animate_swap(arraydup,index,insertPosition)
        end #elsifs
        
      end #end .each do
      
      return array
      
      
  end #end insertionsort
    
  
    
end #end class _

