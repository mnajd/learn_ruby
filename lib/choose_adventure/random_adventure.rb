def chapter_header(chapter_num)

	puts 'CHAPTER: ' + chapter_num.to_s
	puts '--------------------'

end

def clean_gets

	gets.chomp.downcase
end

def chapter_ask_name
	# chapter 1
	chapter_header('ask name')
	puts 'whats your name?'
	name = clean_gets
	sleep(3)

	# return the name
	return name
end

def chapter_the_river(name, score)
	# chapter the river
	chapter_header('the river')

	while true
		puts  "#{name} Goes for a walk in the afternoon sun on a hot day. Does #{name} jump in the stream?" 
		answer = clean_gets
		if answer == 'yes'
			puts " #{name} Jumps in the stream and gets mauled by a shark! "
			sleep(2)
			puts "#{name} crawls away and finds an apple"
			break
		elsif answer == 'no'
			score += 1
			puts   " #{name} keeps walking and finds a apple."
			break
		else
			puts 'non valid answer'
		end
	end
	sleep(3)
end


def chapter_apple_time(name, score)
	# chapter apple time
	chapter_header('apple time')

	while true
		puts 'do you want to eat the apple'
		eat = clean_gets
		if eat == 'yes'
			puts 'a worm crawls out in your gut and eats you from the inside causeing internal bleeding!'
			break
		
		elsif eat == 'no'
			score += 1
			puts 'you see a worm crawl out that would of ate you and throw the apple to side and move on.'
			break

		else
			puts 'non valid answer'
		end
	end	
	sleep (3)
end



def chapter_IED(name, score)
	# chapter IED
 	chapter_header('IED')

	while true
		puts  " #{name} walks on and finds a I.E.D on the ground, would you like to try to disarm it"
		disarm = clean_gets
		if disarm == 'yes'
			score += 1
			puts " #{name} disarms it and lives for now!"
			break

		elsif disarm == 'no'
			puts ' you get your leg blown the fuck off as you try to pass by'
			break
		else
			puts 'non valid answer'
		end
	end
	sleep(3)
end



def chapter_osama(name, score)
	#CHAPTER osama
	chapter_header('osama')
	while true
		puts   " after #{name} disarms the I.E.D he continues walking and stumbles upon Osama Binladen what does he do kill him or walk away?"
		choice = clean_gets
		if choice == 'kill him'
			puts name + ' strangles Osama and gets shot by a guard'
			break
		elsif choice == 'walk away'
			score += 1
			puts "#{name} walks away and someone else kills Osama"
			break
		else
			puts 'non valid answer'
		end
	end
end	


# start game
name = chapter_ask_name

score = 0
chapter_the_river(name, score)
chapter_apple_time(name, score)
chapter_IED(name, score)
if score == 3
	chapter_osama(name, score)
else
	puts 'no osama (or soup) for you!'
end

# score bord
puts "score: #{score} of 4"