def bubble_sort(array_of_numbers)
  sorted_array = []

  array_of_numbers.each_with_index do |number, index|
    if index < array_of_numbers.length - 1
      if number > array_of_numbers[index + 1]
        sorted_array.push(array_of_numbers[index + 1])
        sorted_array.push(number)
      end
    end
  end

  return sorted_array
end

# bubble_sort([4,3,78,2,0,2])
p bubble_sort([3, 2, 1])