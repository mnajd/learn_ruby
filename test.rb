class Player
	def initialize(first_name)
		@score = 0
		@first_name = first_name
	end
	def track_win
		@score += 1
	end
	def get_name
		return @first_name.capitalize
	end
	def get_my_score
		return @score
	end
end

class Dice
	def initialize(range)
		@range = range
	end
	def roll
		return rand(@range)
	end
end

class Game
	def initialize(p1, p2, dice)
		@p1 = p1
		@p2 = p2
		@dice = dice
	end

	def play_round
		# roll dice
		r1 = @dice.roll
		r2 = @dice.roll

		# track the win
		if r1 > r2
			@p1.track_win
		elsif r2 > r1
			@p2.track_win
		end
	end

	def puts_score_board
		# print the score
		puts ''
		puts 'Score Board'
		puts "#{@p1.get_name}: #{@p1.get_my_score}"
		puts "#{@p2.get_name}: #{@p2.get_my_score}"
	end
end

# the players
steve = Player.new "steve"
don = Player.new "don"
chad = Player.new "chad"
melissa = Player.new "melissa"
shannon = Player.new "shannon"
sarah = Player.new "sarah"

# the game
g1 = Game.new(steve, don, Dice.new(1...7))
g2 = Game.new(chad, melissa, Dice.new(1...6))
g3 = Game.new(shannon, sarah, Dice.new(1...4))

# play 10 rounds
100000.times do
	g1.play_round
	g2.play_round
	g3.play_round
end

g1.puts_score_board
g2.puts_score_board
g3.puts_score_board


=begin

# init scores
p1_score = 0
p2_score = 0

# play 10 rounds
10.times do

	# p1 rolls
	p1_result = rand(1...7)

	#p2_roll
	p2_result = rand(1...7)

	if p1_result > p2_result
		p1_score += 1
	elsif p2_result > p1_result
		p2_score += 1
	else
		puts 'its a tie'
	end
end

# print the score
puts ''
puts 'the score board'
puts "don: #{p1_score}"
puts "steve: #{p2_score}"
=end