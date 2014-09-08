print "How old are you? "
age = gets.chomp

print "How tall are you? "
height = gets.chomp

print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age}, #{height} tall and #{weight} heavy."


print "What is your dog's name?"
dog = gets.chomp

puts "#{dog} is a lovely dog"

print "When were you born? "
year = gets.chomp
current = 2014


puts "So you are #{current - year.to_i} old"
