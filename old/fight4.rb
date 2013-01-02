###########################
# Describes Weapons
##########################
class Sword

  def hit(opponent)

    # hit logic
    hurt = rand(10)
    opponent.health -= hurt

  end
end


class Knife

  def hit(opponent)

    # hit logic
    hurt = rand(5)
    opponent.health -= hurt

  end
end

class Hands

  def hit(opponent)

    # hit logic
    hurt = rand(2)
    opponent.health -= hurt

  end
end

##########################
# Describes players
##########################
class Player

  # so one player can remove health from another
  attr_accessor :health

  def initialize(weapon)
    @health = 10
    @weapon = weapon
  end

  def hit(opponent)

    # hit logic
    @weapon.hit(opponent)

  end

end

###########################
# Describes Game
##########################
class Game

  def play
    # two players
    p1 = Player.new(Sword.new)
    p2 = Player.new(Hands.new)

    # both players healthy
    healthy = true
    rounds_count = 0
    while healthy

      # start round
      rounds_count += 1

      # players fight
      p1.hit(p2)
      p2.hit(p1)

      # health check
      if p1.health <= 0 or p2.health <= 0
        # someone died, break the loop
        healthy = false
      end
    end

    #puts "#{rounds_count} rounds"

    if p1.health <= 0
      return "p1"
    else
      return "p2"
    end

  end
end


###########################
# Describes ThreadHelper
##########################

class ThreadHelper

  attr_accessor :failures

  def initialize()
    @threads = []
    @transactions = 0
    @num_threads = 1
    @failures = 0
  end

  def load(num_threads=1, &work)
    @num_threads = num_threads
    @work = work  # save work for new threads

    # create threads
    num_threads.times do ||
      create_thread
    end
  end

  def run()
    @start_time = Time.now
    start_all
    wait_until_finished
  end

  def run_and_stagger(max_sleep=10)
    @start_time = Time.now
    start_all { rand_sleep(max_sleep) }
    wait_until_finished
  end

  def run_for_duration(num_seconds, max_sleep=0)
    @start_time = Time.now

    # keep them running
    to_time = Time.now + num_seconds
    while (Time.now <= to_time)
      @threads.each do |t|

        # restart threads
        if (t.status=="sleep")
          rand_sleep(max_sleep)
          t.run
        end

        if (t.status==false or t.status == nil)
          @transactions += 1
          @threads.delete t
          thread = create_thread
          rand_sleep(max_sleep)
          thread.run
        end
      end
    end
    wait_until_finished()
  end

  private

  def create_thread()
    thread = Thread.new do ||
      Thread.stop
      @work.call
    end
    @threads << thread
    return thread
  end

  def start_all(&block)
    @threads.each do |t|

      # pausing block?
      block

      # run
      t.run
    end
  end

  # wait for threads to complete
  def wait_until_finished()
    @threads.each do |t|
      if (t.status=="run")
        t.join;  # wait to finish
      end
    end
  end

  # random sleep
  def rand_sleep(max_sleep=10)
    if max_sleep > 0
      time_to_sleep = rand(0)/max_sleep
      sleep(time_to_sleep)
    end
  end

end



###########################
# Run Program
##########################

puts "start #{Time.now}"
thread_helper = ThreadHelper.new()
thread_helper.load(4) do

  # play until p1 dies
  game_count = 0
  game = Game.new
  while true
    # start the game
    game_count += 1

    # play the game
    result = game.play

    # if p1 died, break
    if result == "p1"
      break;
    end
  end

  puts "#{game_count} games"

end
thread_helper.run
puts "end #{Time.now}"



