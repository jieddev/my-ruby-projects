original_array = [10, 20, 30, 40, 50]

new_array = original_array.map do |number| 
  number + 2
end

print "Original Array: "
p original_array
print "New Array: " 
p new_array

## OR USE THIS
# original_array = [10, 20, 30, 40, 50]
# new_array = []

# original_array.each do |number| 
#   new_array.push(number + 2)
# end

# p original_array
# p new_array