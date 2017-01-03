# Chapter 5 of Learn to Program work

# Write an Angry Boss program. It should rudely ask what you want. 
# Whatever you answer, the Angry Boss should yell it back to you, and then fire you.
puts 'WHADDYA WANT?!'
request = gets.chomp
puts 'WHADDYA MEAN "' + request.upcase + '"?!? YOU\'RE FIRED!!'

# So here's something for you to do in order to play around more with 
# center, ljust, and rjust: Write a program which will display a Table of Contents
title = 'Table of Contents'
ch1 = 'Chapter 1: Numbers'
ch1pg = 'page 1'
ch2 = 'Chapter 2 : Letters'
ch2pg = 'page 72'
ch3 = 'Chapter 3: Variables'
ch3pg = 'page 118'
lineWidth = 50
puts title.center lineWidth
puts ''
puts ch1.ljust(lineWidth/2) + ch1pg.rjust(lineWidth/2)
puts ch2.ljust(lineWidth/2) + ch2pg.rjust(lineWidth/2)
puts ch3.ljust(lineWidth/2) + ch3pg.rjust(lineWidth/2)