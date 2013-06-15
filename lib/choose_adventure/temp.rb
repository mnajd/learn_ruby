class Dice
	def roll
		rand(1..6)
	end
	
	def roll_average
		sum = 0
		iter = 1000

		iter.times do
			num = self.roll 
			sum += num
		end

		# avg
		avg = sum.to_f / iter.to_f
		return avg
	end
end

# create dice
d = Dice.new

# loop forever
rounds = 0 
while true

	# roll average
	avg = d.roll_average
	rounds += 1

	# is anything other than 3
	if avg >= 4 or avg < 3
		
		# break the loop & celebrate
		puts "it wasnt 3 after #{rounds} rounds"
		break
	end

	if rounds % 100000 == 0
		puts rounds
	end
end