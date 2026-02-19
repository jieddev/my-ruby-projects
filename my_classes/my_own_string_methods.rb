class String
  def my_reverse()
    reversed_string = ""

    self.each_char do |char|
      reversed_string = char + reversed_string
    
    end

    reversed_string
  end
end


puts "hello".my_reverse

