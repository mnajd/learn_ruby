require 'load_runner'
require_relative 'lib/ninja/game'


###########################
# Run Program
##########################

queue = LoadRunner::Queue.new

puts 'play 100 games'

puts "start #{Time.now}"

# play 100 games
queue.load(100) do

  game = Game.new
  result = game.play

end
queue.run
puts "end #{Time.now}"



