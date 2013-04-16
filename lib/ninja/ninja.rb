class Ninja

  attr_accessor :health

  def initialize(weapon)
    # check type
    unless weapon.is_a? Weapon
      raise TypeError.new("that's not a weapon")
    end

    @health = 10
    @weapon = weapon
  end

  def hit(other_ninja)

    # check type
    unless other_ninja.is_a? Ninja
      raise TypeError.new("that's not a ninja")
    end

    # cause damage
    @weapon.hit(other_ninja)

  end
end