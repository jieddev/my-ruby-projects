list_of_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
list_of_strings = ["1", "2", "3"]

def multiply_even_numbers_by_2(array) 
  array.map do |number| 
    if number.even?
      number * 2
    else 
      number * 1
    end
  end
end

def convert_strings_to_integers(array_of_strings)
  array_of_strings.map { |string| string.to_i()}
end

def convert_hash_values_to_symbols(hash)
  hash.map { |key, value| [key.to_s, value.to_sym] }
end

