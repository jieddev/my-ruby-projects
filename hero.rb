class Hero
  def initialize(name, role, damage_type, energy)
    @name = name
    @role = role
    @damage_type = damage_type
    @energy = energy
  end

  def energy
    @energy
  end

end

p gusion = Hero.new("Gusion", "Assassin/Mage", "Magic Damage", 99)

p gusion.energy