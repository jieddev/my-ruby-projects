class String
  def my_reverse()
    reversed_string = ""

    self.each_char do |char|
      reversed_string = char + reversed_string
    
    end

    reversed_string
  end

  def my_capitalize()
    string = self
    stripped_string = string.lstrip()
    capitalize_first_letter_of_string = stripped_string.sub(stripped_string[0], stripped_string[0].upcase())
    # return capitalize_string
    return capitalize_first_letter_of_string
  end


end


puts "let's goo!".my_capitalize

