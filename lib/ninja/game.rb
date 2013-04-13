require_relative "ninja"
require_relative "weapons/hands"
require_relative "weapons/boulder"

class Game

  attr_accessor :n1_win_count, :n2_win_count

  def initialize
    @n1_win_count = 0
    @n2_win_count = 0
  end

  def puts_score
    puts "n1: #{@n1_win_count}"
    puts "n2: #{@n2_win_count}"
  end


  def play
    n1 = Ninja.new(Hands.new)
    n2 = Ninja.new(Boulder.new)

    # rounds to fight
    round_count = 0

    while true
      round_count +=1

      # hit eachother
      n1.hit(n2)
      n2.hit(n1)

      # n2 dead yet?
      if n2.health <= 0
        @n1_win_count += 1
        break
      end

      # n1 dead yet?
      if n1.health <=0
        @n2_win_count += 1
        break
      end

    end
    puts "Opponent killed on round: #{round_count}"

  end
end