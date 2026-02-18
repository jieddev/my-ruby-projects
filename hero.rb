class Hero
  def initialize(name, role, damage_type)
    @name = name
    @role = role
    @damage_type = damage_type
  end

end

gusion = Hero.new("Gusion", "Assassin/Mage", "Magic Damage")

puts gusion.name