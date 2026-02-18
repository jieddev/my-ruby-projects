def bubble_sort(array_of_numbers)
  sorted_array = []
  number_of_times_to_iterate = array_of_numbers.length

  number_of_times_to_iterate.times do |i|
    array_of_numbers.each_with_index do |number, index|
      if index > 0

        left_number = array_of_numbers[index - 1]
        right_number = array_of_numbers[index]

        # puts left_number
        # puts right_number
        
        if left_number > right_number
          array_of_numbers[index - 1] = right_number
          array_of_numbers[index] = left_number
        end

        sorted_array = array_of_numbers
      end
    
      # number_of_times_to_iterate -= 1  
    end
  end

  return sorted_array
end

p bubble_sort([4,3,78,2,0,2])
# p bubble_sort([3, 2, 1])