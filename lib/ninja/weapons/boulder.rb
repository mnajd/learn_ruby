require_relative "weapon"

class Boulder < Weapon

  def hit(other_ninja)
    damage = rand(3..6)
    other_ninja.health -= damage
  end

end