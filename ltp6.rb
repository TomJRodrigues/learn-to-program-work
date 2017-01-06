# Chapter 6 of Learn to Program Work

# 99 Bottles of beer on the wall
bottles = 99
until bottles == 0 do
	puts(bottles.to_s + ' bottles of beer on the wall')
	puts'Take one down, pass it around.'
	bottles -=1
end
puts 'No more bottles of beer on the wall! You drunk.'

=begin
# Deaf Grandma program V1
puts "Say hello to my deaf grandma!"
str = gets.chomp
while str != "BYE" do
	if (str.upcase === str)
		num1 = rand(21)
		num = num1 + 1930
		puts 'NO, NOT SINCE ' + num.to_s + '!'
		str = gets.chomp
	else
		puts 'HUH?! SPEAK UP, SONNY!'
		str = gets.chomp
	end
end
=end

# Deaf Grandma Extended-- say "BYE" 3 times in a row to exit
# She responds depending on if all uppercase
# Responds with random year between 1920 and 1950 if indeed all uppercase
puts "Say hello to my deaf grandma!"
str = gets.chomp
str1 = ""
str2 = ""
until (str === "BYE" and str1 === "BYE" and str2 === "BYE") do
	if (str.upcase === str)
		num1 = rand(21)
		num = num1 + 1930
		puts 'NO, NOT SINCE ' + num.to_s + '!'
		str2 = str1
		str1 = str
		str = gets.chomp
	else
		puts 'HUH?! SPEAK UP, SONNY!'
		str1 = str
		str2 = str1
		str3 = str2
		str = gets.chomp
	end
end

# Leap Year Tool
puts 'Please enter a beginning year:'
beginning_year = gets.chomp
puts 'You entered ' + beginning_year.to_s + '. Please enter an end year:'
ending_year = gets.chomp
puts 'Your interval is ' + beginning_year.to_s + '-' + ending_year.to_s + '. These are the Leap Years in between:'
working_number = beginning_year.to_i
until (working_number == (ending_year.to_i + 1)) do
	if ((working_number % 4) == 0) and ((working_number % 100) != 0) or ((working_number % 400) == 0)
		puts working_number.to_s + ' is a leap year'
	end
	working_number = working_number.to_i + 1
end
