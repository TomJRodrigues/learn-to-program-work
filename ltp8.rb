# Chapter 8 of Learn to Program Work

# englishNumbers V3 that handles up to millions
def englishNumber number
	if number < 0 # No negative numbers.
		return 'Please enter a number that isn\'t negative.'
	end
	if number == 0
		return 'zero'
	end

	numString = '' # This is the string we will return.

	onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
	tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
  left  = number
   write = left/1000000          # How many millions left to write out?
  left  = left - write*1000000  # Subtract off those millions.

  if write > 0
    millions = englishNumber write
    numString = numString + millions + ' million'

    if left > 0
      # So we don't write 'two thousandfive hundred'...
      numString = numString + ' '
    end
  end

  write = left/1000          # How many thousands left to write out?
  left  = left - write*1000  # Subtract off those thousands.

  if write > 0
  	thousands = englishNumber write
  	numString = numString + thousands + ' thousand'

  	if left > 0
  		# So we don't write 'two thousandfive hundred'...
  		numString = numString + ' '
  	end
  end

  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to
    # "numString", we add the string ' hundred' after it.
    # So, for example, if we originally called englishNumber with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have englishNumber write out the 'nineteen' for us,
    # then we write out ' hundred', and then the rest of
    # englishNumber writes out 'ninety-nine'.

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end

=begin
puts englishNumber 0
puts englishNumber 10
puts englishNumber 11
puts englishNumber 17
puts englishNumber 88
puts englishNumber 100
puts englishNumber 101
puts englishNumber 784
puts englishNumber 1000
puts englishNumber 1001
puts englishNumber 4381
puts englishNumber 123456
puts englishNumber 999999
puts englishNumber 1000000
puts englishNumber 1000011
puts englishNumber 3453913
=end


# Ninety-nine bottles of beer V2 with englishNumbers support
def beerBottles number
	until number == 0 do
	puts((englishNumber number).to_s + ' bottles of beer on the wall')
	puts'Take one down, pass it around.'
	number -=1
	end
	puts 'No more beer for you. You\'re drunk'
end

=begin
puts beerBottles 9999
=end