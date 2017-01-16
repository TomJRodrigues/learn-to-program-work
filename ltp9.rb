# Chapter 9 of Learn to Program Work

=begin

# Find out exact second I was born, and find 1 billionth birthsecond
birthtime = Time.new(1991, 12, 15, 8, 30)
age = Time.now - birthtime
puts "Tom is " + age.to_s + " seconds old"
difference = 1000000000 - age
puts 'Tom needs ' + difference.to_s + ' seconds until he is 1 billion seconds old'

# Birthday Spanker
# Ask for birthday, calculate age, and deliver spanks for each year old
puts 'Welcome to the Birthday Spanker'
puts 'Please enter your birth year: '
year = gets.chomp
if (1900 < year.to_i and year.to_i < 2017)
	puts 'You entered: ' + year.to_s
else
	puts 'Please enter a valid year: '
	year = gets.chomp
end
puts 'Please enter your birth month: '
month = gets.chomp
if (0 < month.to_i and month.to_i < 13)
	puts 'You entered: ' + month.to_s
else
	puts 'Please enter a valid month: '
	month = gets.chomp
end
puts 'Please enter your birth day: '
day = gets.chomp
if (0 < day.to_i and day.to_i < 32)
	puts 'You entered: ' + day.to_s
else
	puts 'Please enter a valid day: '
	day = gets.chomp
end

birthday = Time.new(year, month, day)
puts 'birthday is: ' + birthday.to_s
ageSeconds = Time.now - birthday
puts 'ageSeconds is: ' + ageSeconds.to_s
ageYears = (ageSeconds / 60 / 60 / 24 / 365)
puts 'ageYears is: ' + ageYears.to_i.to_s
until (ageYears.to_i < 1)
	puts 'This is for your ' + ageYears.to_i.to_s + ' birthday! *SPANK*'
	ageYears -= 1
end

# My very own Orange Tree

class OrangeTree
# No fruit until year 4
# Starts with 12 fruit and then grows to 300 over 20 years
# Fruit amount declines after 20 years until death at 30 years
# Tree grows 2 feet each year

	def initialize
		@age = 0
		@height = 0
		@oranges = 0
	end

	def pickAnOrange
		if @oranges
			puts 'You pick a fresh orange. There are now ' + (@oranges - 1).to_s + ' oranges left this season.'
			@oranges -= 1
		end
	end

	def countTheOranges
		puts 'There are ' + @oranges.to_s + ' oranges.'
	end

	def height?
		'Your tree is ' + @height.to_s + ' feet tall today.'
	end

	def oneYearPasses
		@age += 1
		@height += 2
		if 3 < @age
			@oranges = (@age - 3) * 12
		end
		if 12 < @age
			puts 'The tree has died at the ripe old age of 12.'
			exit
		end
		puts 'One year passes. Your tree is growing nicely this season.'
		puts 'It just turned ' + @age.to_s + ' years old today.'
	end
end

tree = OrangeTree.new
tree.oneYearPasses
tree.height?
tree.countTheOranges
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.countTheOranges
tree.pickAnOrange
tree.countTheOranges
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.height?
tree.countTheOranges
tree.pickAnOrange
tree.countTheOranges
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses

=end

# Dragon Pet V2 with interactions

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  # He's full.
    @stuffInIntestine =  0  # He doesn't need to go.
    @dead = false

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  # "private" means that the methods defined here are
  # methods internal to the object.  (You can feed
  # your dragon, but you can't ask him if he's hungry.)

  def hungry?
    # Method names can end with "?".
    # Usually, we only do this if the method
    # returns true or false, like this:
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      @dead = true
      exit  # This quits the program.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end
end

pet = Dragon.new 'Norbert'
puts 'Norbert wakes up and stretches his wings.'
puts 'He looks at you expectantly, smoke twirling from his nostrils'
until @dead == true do
	puts 'Please enter a command:'
	command = gets.chomp
	if command == 'feed'
		pet.feed
	elsif command == 'toss'
		pet.toss
	elsif command == 'walk'
		pet.walk
	elsif command == 'putToBed'
		pet.putToBed
	elsif command == 'rock'
		pet.rock
	else
		puts 'Please enter a command from the list:'
		puts 'feed, toss, walk, putToBed, rock'
	end
end















