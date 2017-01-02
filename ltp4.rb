# Chapter 4 of Learn to Program work

# Write a program which asks for a person's first name, 
# then middle, then last. Finally, it should greet the person using their full name.
puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp
puts "Pleased to meet you, " + first + " " + middle + " " + last + "."

# Write a program which asks for a person's favorite number. 
# Have your program add one to the number, then suggest the result as a 
# bigger and better favorite number. (Do be tactful about it, though.)

puts "What is your favorite integer?"
number = gets.chomp
numberbigger = number.to_i + 1
puts "Hmm, " + number.to_s + ". That is a nice number, but I think " + numberbigger.to_s + " is a better number"