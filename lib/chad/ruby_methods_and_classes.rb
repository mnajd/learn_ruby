class Player
	attr_accessible :name, :age, :score

	def initialize(name, age)
		@name = name
		@age = age
		@score = 0
	end

	def roll()
		return rand(1..6)
	end

	def wins()
		@score += 1
		puts "#{@name} wins"
	end
end

class Dice
	def initialize(p1, p2)
		@p1 = p1
		@p2 = p2
	end

	def play()
		# player one rolls dice
		result1 = @p1.roll()	
		result2 = @p2.roll()

		# score
		if (result1 > result2)
			@p1.wins()
		elsif (result2 > result1)
			@p2.wins()
		end
	end

	def puts_score()
		puts "#{@p1.name} win #{@p1.score} number of times"
		puts "#{@p2.name} win #{@p2.score} number of times"
	end
end

class FixedGame
	def initialize(p1, p2)
		@p1 = p1
		@p2 = p2
	end

	def play()
		@p1.wins()
	end

	def puts_score()
		puts "#{@p1.name} win #{@p1.score} number of times"
		puts "#{@p2.name} win #{@p2.score} number of times"
	end
end

###################################
# let's play
###################################
p1 = Player.new "don", 34
p2 = Player.new "chad", 34
game = Dice.new p1, p2

6.times do
	game.play()
end

game.puts_score()