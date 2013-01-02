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
    hurt = rand(5)
    opponent.health -= hurt

  end
end

class Hands

  def hit(opponent)

    # hit logic
    hurt = rand(2)
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
# Describes Game
##########################
class Game

  def play
    # two players
    p1 = Player.new(Knife.new)
    p2 = Player.new(Hands.new)

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

    #puts "#{rounds_count} rounds"

    if p1.health <= 0
      return "p1"
    else
      return "p2"
    end

  end
end

###########################
# Run Program
##########################


10.times do

# play until p1 dies
  game_count = 0
  game = Game.new
  while true
    # start the game
    game_count += 1

    # play the game
    result = game.play

    # if p1 died, break
    if result == "p1"
      break;
    end
  end

  puts "#{game_count} games"

end





