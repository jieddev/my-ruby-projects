module Speak
  def speak(sound)
    puts sound
  end
end

module Eat
  def eat(sound)
    puts sound
  end
end

class GoodDog
  include Speak
  include Eat
end

class HumanBeing
  include Speak
end

# sparky = GoodDog.new
# sparky.speak("Arf!")
# bob = HumanBeing.new
# bob.speak("Hello!")

brownie = GoodDog.new
brownie.eat("um um")

# puts GoodDog.ancestors
