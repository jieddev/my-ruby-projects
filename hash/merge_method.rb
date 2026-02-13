my_recipe_hash = {
  cake: "Egg, Milk, and Flour",
  fried_egg: "Oil, Egg, Salt",
  spaghetti: "Pasta, Oil, Salt",
  chocolate_cake: "Egg, Flour, Chocolate",
  hamburger: "Beef, Bread, Lettuce",
}

another_recipe_hash = {
  "fries" => "Salt, Potato, Oil",
  "apple_juice" => "Apple, Honey, Sugar",
}

puts "This is the merge result: "
p my_recipe_hash.merge(another_recipe_hash)

puts "This is the merge! result: "
p my_recipe_hash.merge!(another_recipe_hash)
