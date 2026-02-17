def substrings(string, array_of_substrings)
  string_in_lowercase = string.downcase()
  word_and_number_of_occurences = {}

  array_of_substrings.each_with_index do |substring, index|
    if string_in_lowercase.scan(substring).length != 0
      word_and_number_of_occurences[substring.to_sym] = string_in_lowercase.scan(substring).length
    
    end
  end

  return word_and_number_of_occurences

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
