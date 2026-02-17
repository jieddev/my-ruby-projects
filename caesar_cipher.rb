def caesar_cipher(string, shift)
  splitted_string = string.split("")
  small_alphabetical_letters = ('a'..'z').to_a
  encrypted_string = ""

  splitted_string.each do |letter|
    if letter == " "
      encrypted_string += " "
    elsif letter == "!"
      encrypted_string += "!"

    elsif letter == letter.downcase()
      index_of_letter = small_alphabetical_letters.index(letter)
      shifted_letter = small_alphabetical_letters[index_of_letter + shift]
      encrypted_string += shifted_letter
    
    elsif letter == letter.upcase()
      letter_small = letter.downcase()
      index_of_letter = small_alphabetical_letters.index(letter_small)
      shifted_letter = (index_of_letter + shift ) % 26
      shifted_letter_upcase = small_alphabetical_letters[shifted_letter].upcase()
      encrypted_string += shifted_letter_upcase
  
    end
  end

  return encrypted_string
end

def ask_for_user_input()
  print "Please enter a string to be encrypted: "
  user_input = gets.chomp
  return user_input
end

puts "Here is the encrypted string: #{caesar_cipher("What a string!", 5)}"


