###########################
# Describes Weapons
##########################
class Sword

  def hit(opponent)

    # hit logic
    hurt = rand(10)
    opponent.health -= hurt

  end
end

class Knife

  def hit(opponent)

    # hit logic
    hurt = rand(3)
    opponent.health -= hurt

  end
end

##########################
# Describes players
##########################
class Player

  # so one player can remove health from another
  attr_accessor :health

  def initialize(weapon)
    @health = 10
    @weapon = weapon
  end

  def hit(opponent)

    # hit logic
    @weapon.hit(opponent)

  end

end


###########################
# Run Program
##########################

# two players
p1 = Player.new(Sword.new)
p2 = Player.new(Knife.new)

# both players healthy
healthy = true
rounds_count = 0
while healthy

  # start round
  rounds_count += 1

  # players fight
  p1.hit(p2)
  p2.hit(p1)

  # health check
  if p1.health <= 0 or p2.health <= 0
    # someone died, break the loop
    healthy = false
  end
end

puts "#{rounds_count} rounds"

if p1.health <= 0
  puts "p1 died"
else
  puts "p2 died"
end


