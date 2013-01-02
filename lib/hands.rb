require_relative "weapon"

class Hands < Weapon

  def hit(other_ninja)
    damage = rand(1..3)
    other_ninja.health -= damage
  end

end