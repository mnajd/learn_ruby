# players
class Player

	def racer_stats(racer_hash)
		puts ''
		puts 'stats for racer'
		puts '--------------'
		puts  racer_hash[:name]
		puts "top speed: #{racer_hash[:top_speed]}"
		puts "turning:   #{racer_hash[:turning]}"
		puts "luck:      #{racer_hash[:luck]}"
	end


	def create_a_racer(name)
		 return {
			luck: rand(1...6),
			turning: rand(1...6),
			top_speed: rand(1...6),
			name: name,
			pos: 0
		}
	
	end
end

# game
class Game
	def initialize
		@track = {
			num_turns: 3,
			distance: 100
		}

		@rounds = 0
	end

	def intro
		puts'________________________


		time to race!!!!!!!!!

			'
		sleep (3)
	end

	def show_winner(r1,r2)

		# show who won
		puts " in #{@rounds} rounds "
		if  r2[:pos] >= 100
			puts  "#{r2[:name]} won"
		else r1[:pos] >= 100
			puts  "#{r1[:name]} won"
		end
		
	end
	
	def race(r1,r2)

		r1[:pos] = 0
		r2[:pos] = 0

		# lets race
		while r2[:pos] < @track[:distance] and r1[:pos] < @track[:distance]
			
			r1[:pos] += r1[:top_speed]
			r2[:pos]  += r2[:top_speed]
			@rounds += 1
		end	

	end
end



# create racers
p = Player.new
r1 = p.create_a_racer('mike')
r2 = p.create_a_racer('john')

# show their stats
p.racer_stats(r1)
p.racer_stats(r2)

# race
g = Game.new
g.intro
g.race(r1,r2)

# show winnner
g.show_winner(r1,r2)

