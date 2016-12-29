# Chapter 1
# Hours in a year:
days_in_a_year = 365
hours_in_a_day = 24
hours_in_a_year = days_in_a_year * hours_in_a_day
puts "Hours in a year: " + hours_in_a_year.to_s + " hours"

# Minutes in a decade:
minutes_in_an_hour = 60
years_in_a_decade = 10
minutes_in_a_decade = minutes_in_an_hour * hours_in_a_day * days_in_a_year * years_in_a_decade
puts "Minutes in a decade: " + minutes_in_a_decade.to_s + " minutes"

# Seconds old I am
toms_birthday = Time.new(1991, 12, 15)
toms_age = Time.now - toms_birthday
puts "Tom is " + toms_age.to_s + " seconds old"

# Numbe of chocolates I hope to eat in my lifetime
chocolates_per_year = 365
lifetime = 80
puts "I hope to eat " + (chocolates_per_year * lifetime).to_s + " chocolates in my lifetime"

# Age of person 1246 million seconds old
puts "Someone who is 1246 million seconds old is " + (1246000000 / 60 / 60 / 24 / 365).to_s + " years old"
