def check_characters_in_string(characters, word) 
  return word.include?(characters) ? word : "None"

end

puts check_characters_in_string("lab", "laboratory")
