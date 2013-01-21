class Game
	def play
		# laura's adventure

		# initiateing
		puts 'hello welcome to LAURAS ADVENTURE!!!!!'

		#your first decision
		puts 'CHAPTER 1: MORNING TIME'
		sleep(2)
		puts 'laura wakes up its 4:30a.m monday. what do you do? A.goto work? or B.go back to bed?'
		choice = gets.chomp.downcase

		#wrong choice
		if choice == 'b' 
			puts 'you made the wrong choice and failed!' 
			exit
		end

		#obviously you made the right choice.
		puts 'CHAPTER 2: WORK TIME'
		sleep(2)
		puts 'you get up and goto work you get there and your boss starts bitchin at ya. wudda ya do? A.do what she says. or B. puncha in da face?'
		choice = gets.chomp.downcase

		#you got issues
		if choice == 'b'
			puts 'you idiot you got arrester and fired you fail.'
			exit
		end

		#are you a child abuser?
		puts 'CHAPTER 3: HOME TIME'
		sleep(2)
		puts 'laura gets home and is greeted by her sons michael and john. what do you do? A.give theim hugs? or B.punchem in the face?'
		choice = gets.chomp.downcase

		#you are!
		if choice == 'b'
			puts 'your sucha dick. you fail.'
			exit
		end

		#your such a nice person... so far.
		puts 'CHAPTER 4: FAMILY TIIIME!'

		while true
			puts 'Are you a child abuser?'
			choice = gets.chomp
			if choice == 'yes'
				puts 'just kiddin.'
				break
				
			end
		end
	end



	def play2
		puts 'whats your favorite bad word?'
		choice = gets.chomp
		puts 'oh cool ' +choice+ ' thats a good one mines bitch. hahahaha >:D'
	end
end