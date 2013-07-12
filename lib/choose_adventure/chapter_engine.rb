def chapter_header(chapter_num)

	puts 'CHAPTER: ' + chapter_num.to_s
	puts '--------------------'

end

def clean_gets

	gets.chomp.downcase
end

# chapter engine
def chapter_engine(chapter_hash)
	# chapter the river
	chapter_header(chapter_hash[:chapter])

	while true
		puts  chapter_hash[:question]
		answer = clean_gets
		if answer == chapter_hash[:answer1]
			puts chapter_hash[:response1]
			break
		elsif answer == chapter_hash[:answer2]
			puts chapter_hash[:response2]
			break
		else
			puts 'non valid answer'
		end
	end
	sleep(3)
end

# define chapters
chapter_the_river = {
	chapter:'the river',
	question: 'You go for a walk in the afternoon sun on a hot day. Does #{name} jump in the stream?',
	answer1:'yes',
	answer2: 'no',
	response1: 'you jump in the stream and get mauled by a shark... then crawl away and finds an apple',
	response2:'you keep walking and find an apple'
}

chapter_apple_time = {
	chapter:'apple time',
	question:'do you want to eat the apple',
	answer1:'yes',
	response1:'a worm crawls out in your gut and eats you from the inside causeing internal bleeding!',
	answer2:'no',
	response2:'you see a worm crawl out that would of ate you and throw the apple to side and move on.'
}

chapter_IED = {
	chapter:'I.E.D',
	question:'you walk on and find an I.E.D on the ground, would you like to try to disarm it?',
	answer1:'yes',
	response1:'you successfuly disarm the I.E.D and live for now.',
	answer2:'no',
	response2:'you get your leg blown the fuck off as you try to pass by.'
}

chapter_osama = {
	chapter:'osama',
	question: 'after you disarm the I.E.D you continue walking and stumble upon Osama Binladen what do you kill him or walk away?',
	answer1:'kill him',
	response1:'you strangle Osama to death and get shot by a guard.',
	answer2:'walk away',
	response2:'you walk away and someone else kills Osama.'
}

# run chapters
chapter_engine(chapter_the_river)
chapter_engine(chapter_apple_time)
chapter_engine(chapter_IED)
chapter_engine(chapter_osama)