# Project Euler in Ruby

=begin
# Project Euler #1
sum = 0
for i in 0..999
	if i % 3 == 0 or i % 5 == 0
		sum = sum + i
	end
end
puts sum

# Problem #2
iterator = 1
previous = 0
holder = 0
sum = 0
while iterator < 4000001
	if (iterator % 2 == 0)
		sum = sum + iterator
	end
	holder = iterator
	iterator = previous + iterator
	previous = holder
end
puts sum
=end

def largestPrimeFactor number
	i = 2
	biggest_divisor = 0
	while i < number
		if number % i == 0
			biggest_divisor = i
			number = number / i
			i = 2
		else
			i += 1
		end
	end
	number
end








