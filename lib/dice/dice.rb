class Dice

  def roll

    # last value is returned
    rand(1..6)
  end

end



puts 'We will roll the dice until we roll the number 6.'

# create the dice
d = Dice.new

# count the rolls
count = 0

# infinite loop
while true

  # count roll
  count += 1

  # do roll
  result = d.roll

  # if rolled 6
  if result == 6

    # print how many rolls did it take
    puts "got it after #{count} rolls"

    # break infinite loop
    break
  end
end
