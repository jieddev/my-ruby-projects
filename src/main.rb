def bubble_sort(array_of_numbers)
  sorted_array = []

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
      
    end
  end

  return array_of_numbers
end

# bubble_sort([4,3,78,2,0,2])
p bubble_sort([3, 2, 1])