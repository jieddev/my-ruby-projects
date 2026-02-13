my_hash = {
  "a random word" => "ahoy",
  "My math test score" => 94,
  "An array" => [1, 2, 3],
  "an empty hash within a hash" => {},
}

motor_symbols_hash = {
  honda: "Click",
  sniper: "Rifle",
  rusi: "Mataas",
  xrm: "X mo si RM",
}

another_hash = {
  "new commit" => "Add new hash",
  "report" => "working",
}

dish_and_their_description = {
  :pork_katsu => "Sliced pork top with yummy sauce",
  :beef_steak => "Juicy patty with gravy",
  :egg_sandwich => "Two breads with egg on the center with a mayo",
}

favorites = {
  food: "Chao fan",
  place: "Japan",
  drink: "Cola",
}

def person_and_faves(person, favorites = {})
  puts "#{person} loves to eat #{favorites[:food]}, wants to go to #{favorites[:place]}, and likes drinking #{favorites[:drink]}"
end

person_and_faves("Dracula", food: "Chao fan", place: "Japan", drink: "Cola",)