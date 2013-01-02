class Player

  # so one player can remove health from another
  attr_accessor :health

  def initialize
    @health = 10
  end

  def hit(opponent)

    # random number to remove from opponents health
    hurt = rand(3)

    # remove health; required attr_accessor on class
    opponent.health -= hurt
  end

end

# two players
p1 = Player.new
p2 = Player.new

# both players healthy
healthy = true
rounds_count = 0
while healthy

  # start round
  rounds_count += 1

  # p1 hit p2
  p1.hit(p2)

  # p2 hit p1
  p2.hit(p1)

  # health check
  #puts "p2 health: #{p2.health}"
  #puts "p1 health: #{p1.health}"
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


