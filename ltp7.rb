# Chapter 7 of Learn to Program Work

=begin
# Array Sorting V1 using .sort
puts 'Please add to the array: '
item = gets
container = []
until (item ==  "\n") do
	container.push item
	item = gets
end
puts container.sort
=end

# Array Sorting V2 without using .sort
# Does downcase everything...
puts 'Please add to the array: '
item = gets.downcase
container = []
until (item ==  "\n") do
	container.push item
	item = gets.downcase
end
container_sorted = []
until (container.empty? == true)
	container_sorted.push(container.min)
	container.delete(container.min)
end
puts container_sorted

# Table of Contents pretty printed by array
table = ['Table of Contents', 'Chapter 1: Numbers', 'page 1', 'Chapter 2: Letters', 
				 'page 72', 'Chapter 3: Variables', 'page 118']
lineWidth = 40
puts table[0].center lineWidth
puts ''
puts table[1].ljust(lineWidth/2) + table[2].rjust(lineWidth/2)
puts table[3].ljust(lineWidth/2) + table[4].rjust(lineWidth/2)
puts table[5].ljust(lineWidth/2) + table[6].rjust(lineWidth/2)