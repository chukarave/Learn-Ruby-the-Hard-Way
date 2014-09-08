# -*- coding: utf-8 -*-

# variable types of people assigned with the value 10
types_of_people = 10
# variable x is assigned to string containing the variable types_of_people
x = "There are #{types_of_people} types of people."
# the variable binary set to value binary 
binary = "binary"
#the variable do_not is assigned to value don't. double quotes are required due to apostrophe  
do_not = "don't"
# variable y is set to a string containing variables binary and do_not
y = "Those who know #{binary} and those who #{do_not}."

# prints 'There are 10 types of people'
puts x
# prints 'Those who know binary and those who don't'
puts y

# prints 'i said' and the contents of variable x
puts "I said: #{x}."
# prints 'I also said:' and the contents of variable y in single quotes
puts "I also said: '#{y}'."

#sets the variable hilarious to false
hilarious = false
#sets the variable to string calling variable hilarious
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

#prints 'Isn#t that joke so funny?! false
puts joke_evaluation

# variable w set to string
w = "This is the left side of..."
# vriable e set to string
e = "a string with a right side"

#prints the above mentioned strings as one sentence without explicitely calling it string 
puts w + e
