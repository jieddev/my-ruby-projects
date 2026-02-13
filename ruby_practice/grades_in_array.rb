my_array = [1, 5, 3, 10, 7, 4, 6, 9, 8, 4, 2, 4, 6, 1]

passed_grades = my_array.select { |score| score > 7} 

number_of_students_passed = passed_grades.length

puts number_of_students_passed