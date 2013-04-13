class Ninja

  attr_accessor :health

  def initialize(weapon)
    # check type
    if weapon.to_s != "weapon"
      raise TypeError.new("that's not a weapon")
    end

    @health = 10
    @weapon = weapon
  end

  def hit(other_ninja)

    # check type
    if other_ninja.class != Ninja
      raise TypeError.new("that's not a ninja")
    end

    # cause damage
    @weapon.hit(other_ninja)

  end
end