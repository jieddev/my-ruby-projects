my_recipe_hash = {
  cake: "Egg, Milk, and Flour",
  fried_egg: "Oil, Egg, Salt",
  spaghetti: "Pasta, Oil, Salt",
  chocolate_cake: "Egg, Flour, Chocolate",
  hamburger: "Beef, Bread, Lettuce",
}

print "Would you like the keys? or the values? or both: "
user_input = gets.chomp 

case user_input
when "Keys"
  my_recipe_hash.each do |key, value|
  p key
end

when "Values"
  my_recipe_hash.each do |key, value| 
  p value
end

when "Both"
  my_recipe_hash.each do |keyvalue| 
  p keyvalue
end

end

# ALTERNATIVE METHOD:

# my_recipe_hash.each_key { |key| puts key }
# my_recipe_hash.each_value { |value| puts value }
# my_recipe_hash.each { |key, value| puts "The opposite of #{key} is #{value}" }