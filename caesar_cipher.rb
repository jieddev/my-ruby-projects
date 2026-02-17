def caesar_cipher(string, shift)
  # splitted_string = string.split("")
  # encrypted_string = ""
  small_alphabetical_letters = ('a'..'z').to_a

  string.chars.map do |character|
    if small_alphabetical_letters.include?(character.downcase())
      index_of_letter = small_alphabetical_letters.index(character.downcase())
      shifted_char = small_alphabetical_letters[(index_of_letter + shift) % 26]
      
      character == character.upcase() ? shifted_char.upcase() : shifted_char
    else 
      character
    end
  end.join

  # splitted_string.each do |letter|
  #   if letter == " "
  #     encrypted_string += " "
  #   elsif letter == "!"
  #     encrypted_string += "!"

  #   elsif letter == letter.downcase()
  #     index_of_letter = small_alphabetical_letters.index(letter)
  #     shifted_letter = small_alphabetical_letters[index_of_letter + shift]
  #     encrypted_string += shifted_letter
    
  #   elsif letter == letter.upcase()
  #     letter_small = letter.downcase()
  #     index_of_letter = small_alphabetical_letters.index(letter_small)
  #     shifted_letter = (index_of_letter + shift ) % 26
  #     shifted_letter_upcase = small_alphabetical_letters[shifted_letter].upcase()
  #     encrypted_string += shifted_letter_upcase
  
  #   end
  # end

  # return encrypted_string
end

def ask_for_user_input()
  print "Please enter a string to be encrypted: "
  user_input = gets.chomp
  return user_input
end

puts "Here is the encrypted string: #{caesar_cipher("What a string!", 5)}"

## Below is another code from Lua:

# def caesar_cipher(string, key)
#   alphabet = ('a'..'z').to_a
#   alphabet_total_index = alphabet.length

#   array_string = string.chars.map do |string_letter|
#     normalized_letter = string_letter.unicode_normalize(:nfd).gsub(/\p{Mn}/, '')
#     low_letter = normalized_letter.downcase
#     next string_letter unless alphabet.include?(low_letter)
    
#     is_uppercase = string_letter.upcase == string_letter
#     alphabet_letter_index = alphabet.find_index(low_letter)
#     new_letter_index = (alphabet_letter_index + key) % alphabet_total_index

#     is_uppercase ? alphabet[new_letter_index].upcase : alphabet[new_letter_index]
#   end

#   array_string.join
# end
