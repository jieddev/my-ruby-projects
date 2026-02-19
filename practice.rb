class Cat
  def initialize(cat)
    @cat = cat
  end

  def bark()
    return "Ruff ruff"
  end

end

# minggay = Cat.new("Minggay")
# puts minggay.bark()
# Cat.bark()

class Lamp
  def self.about_me()
    return "We brighten people's lives"
  end
end

# p Lamp.about_me

class WaterBottle
  def initialize(size)
    @size = size
  end

  def size_of_water_bottle()
    # return @size
    puts @size
  end
end

# aquaflask = WaterBottle.new("20 ounce")
# aquaflask.size_of_water_bottle()

class Student
  def initialize(first_name, last_name, address)
    @first_name = first_name
    @last_name = last_name
    @address = address
  end

  def show_info_of_student() 
    return @first_name + " " + @last_name + " " +  @address
  end

end

# john_doe = Student.new("John", "Doe", "New York")
# p john_doe.show_info_of_student()

class Person
  def initialize(money)
    @money = money
  end

  def get_money=(new_money)
    @money = new_money
  end

  def money()
    return @money
  end
  
end

# jiedel = Person.new(100)
# jiedel.get_money=(300)
# puts jiedel.money()


module HappyHappy
  def say_something()
    return("Happy happy, joy joy")
  end
end

class Person
  include HappyHappy
end

class Alien
  include HappyHappy
end

# dodong_janjan = Person.new()
# ngodong_najaj = Alien.new()

# dodong_janjan.say_something()
# ngodong_najaj.say_something()

module MathHelper
  def multiply_by_two(number)
    return number * 2
  end
end

class Homework 

  include MathHelper
end

# hm1 = Homework.new()

# p hm1.multiply_by_two(2)

class Mammal
  def hearbeat?
    true
  end

end

class Dog < Mammal

end

# brownie = Dog.new()
# p brownie.hearbeat?

# p String.ancestors()

class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def battling_average()
    return @hits.to_f / @at_bats
  
  end

  def on_base_percentage() 
    return (@hits + @walks).to_f / @at_bats.to_f
  end
end

# jotaro = BaseballPlayer.new(3, 10, 2)
# puts jotaro.battling_average()
# puts jotaro.on_base_percentage()

class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def first_name()
    return @first_name
  end

  def last_name()
    return @last_name
  end

  def full_name()
    return @first_name + @last_name
  end
end

module MathHelpers 
  def exponent(num1, num2)
    return (num1 ** num2)
  end

end

class Calculator
  include MathHelpers

  def square_root(square_root_of_number)
    return exponent(square_root_of_number, 0.5)

  end

end

calc = Calculator.new()
p calc.square_root(4)
p calc.square_root(5)