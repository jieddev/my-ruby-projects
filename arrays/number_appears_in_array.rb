def check_if_number_exist_in_array(array, number)
  puts array.include?(number) ? "Number Exist in the Array!" : "Number is not there."
end

sample_array = [2, 4, 5, 6, 7, 8, 9]
target = 10

check_if_number_exist_in_array(sample_array, target)