# puts "hello".methods.grep(/case/)


# class Animal

# end

# fido = Animal.new()


class Dog
  def speak()
    return "Ruff ruff"
  end

end

# spot = Dog.new()
# spot.speak()

class Penguin 
  def looks()
    return "We are cute!"
  end

end

class Fish 
  def self.general_overview()
    return("Fish are animals that live in the sea")
  end

end

Fish.general_overview()


class Calculator
  def self.add(num1, num2)
    return num1 + num2
    
  end

end

class Celsius
  def initialize(temperature)
    @temperature = temperature 
  end

  def to_fahrenheit()
    fahrenheit = @temperature * 1.8 + 32
    return fahrenheit
  end


end


