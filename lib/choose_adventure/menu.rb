require_relative 'laura_adventure'

#menu sucka!!!
puts 'what game do yo wanna play?
A.lauras laura_adventure?
B.bad_word_game?'
choice = gets.chomp.downcase

g = Game.new

if choice == 'a'
	g.play
end

if choice == 'b'
	g.play2
end