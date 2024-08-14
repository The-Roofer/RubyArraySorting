RED = "\e[31m"
GREEN = "\e[32m"
YELLOW = "\e[33m"
BLUE = "\e[34m"
MAGENTA = "\e[35m"
CYAN = "\e[36m"
RESET = "\e[0m" 

class ArraySorter

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
            printarray(array,var)
            # sleep 1
            # system('cls')
          end
        end
        
      end
    return array

  end



  def printarray(array,swapper)

    array.each do |var|
      if var == swapper
      print "#{GREEN}#{swapper} #{RESET}"
      else
      print var.to_s+" "
      end
    end
    puts
  end


end

