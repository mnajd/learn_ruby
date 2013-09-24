

def welcome_message
	puts 'choose your own adventure'
	puts ''
end



# start the story
welcome_message()

# loop forever
while true

	puts 'do you want to?'
	puts '#1: eat apples'
	puts '#2: go outside'
	answer = gets.chomp

	if answer == "1"
		puts "they are poisen, you died"
		exit
	elsif answer == "2"
		puts 'you step outside into the rain'
		break
	else
		puts 'that is not a valid answer'
		puts ''
	end

end

puts 'chapter 2'


# loop forever
while true

	puts 'do you want to?'
	puts '#1: cross the street'
	puts '#2: sit in a lawn chair'
	answer = gets.chomp

	if answer == "1"
		puts "you get hit by a car and die"
		exit
	elsif answer == "2"
		puts 'you sit comfortable! the end'
		break
	else
		puts 'that is not a valid answer'
		puts ''
	end

end