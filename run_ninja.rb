require_relative "lib/ninja/game"

##################################
# start program
##################################
g = Game.new
while true

  # play game
  g.play

  # until n1 wins
  if g.n1_win_count > 0
    puts 'ninja 1 won with his hands'
    break
  end
end

g.puts_score




