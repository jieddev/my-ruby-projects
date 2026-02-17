def reverse_inputted_string
  print "Input a string: "
  string_input = gets.chomp
  puts string_input.reverse
end

def my_name
  "Jiedel Ruizo"
end

def greet(name = "stranger")
  "Hello, " + name
end

def even_odd(number)
  unless number.is_a? Numeric
    "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

# puts even_odd(20) #=>  That is an even number.
# puts even_odd("Ruby") #=>  A number was not entered.

foods = ["Carbonara", "Spaghetti", "Noodles", "Cake"]
numbers = [1, 2, 3, 4, 5]

# numbers.each_with_index do |number, index|
#   if number.even?()
#     puts number
#   end
# end


# foods.each do |food|
#   p food.upcase()
# end

# foods.each do |food|
#   if food != "Noodles"
#     puts "I love eating #{food}"
#   end
# end


# students = ["Jake", "Jacob", "Isaac", "Abraham"]
# # calling_students = []

# p students.map { |student| student.upcase}

# students.each do |student|
#   calling_students.push(student.upcase())
# end

# p calling_students


test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

test_scores.all? do |score|
  puts score.any? do |score|
    score > 80
  end
end