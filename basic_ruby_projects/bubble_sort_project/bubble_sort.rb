##########
# @filename             bubble_sort.rb
#
# @description          Build a method #bubble_sort that takes an array and returns a sorted array. 
#                       It must use the bubble sort methodology 
#                       (using #sort would be pretty pointless, wouldn’t it?).
#
# @author               codex-0915
#

def bubble_sort(array)
    array_length = array.size
  
    loop do
        swapped = false
    
            (array_length - 1).times do |index|
                if array[index] > array[index + 1]
                array[index], array[index + 1] = array[index + 1], array[index]
                swapped = true
            end
        end
  
      break if not swapped
    end
  
    return array
end
  
# Sample Test 
puts bubble_sort([4,3,78,2,0,2])

########## End of File