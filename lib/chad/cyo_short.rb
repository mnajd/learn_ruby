

def welcome_message
	puts 'choose your own adventure'
	puts ''
end

def chapter_engine(chapter_hash)

	# loop forever
	while true

		puts chapter_hash[:question]
		puts '1:' + chapter_hash[:option_one]
		puts '2:' + chapter_hash[:option_two]
		answer = gets.chomp

		if answer == "1"
			puts chapter_hash[:result_one]
			exit
		elsif answer == "2"
			puts chapter_hash[:result_two]
			break
		else
			puts 'invalid answer'
			puts ''
		end
	end
end


# define chapers
chapt_eat = {
	question: 'do you want to?',
	option_one: 'eat apples',
	result_one: 'they are poisen, you died',
	option_two: 'go outside',
	result_two: 'you step outside into the rain',
}
chapt_rest = {
	question: 'do you want to?',
	option_one: 'cross the street',
	result_one: 'you get hit by a car and die',
	option_two: 'sit in a lawn chair',
	result_two: 'you sit comfortable! the end',
}

# run story
welcome_message()
chapter_engine(chapt_eat)
chapter_engine(chapt_rest)
