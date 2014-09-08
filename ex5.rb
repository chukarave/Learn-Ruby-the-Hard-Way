# -*- coding: utf-8 -*-

#variables about me
name = 'Zed A. Shaw'
age = 35 #in 2009
height = 74 #inches
weight = 180 #Ibs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
height_in_cm = height * 2.54
weight_in_kg = weight * 0.45359237
#strings involving the abovementioned variables

puts "Let's talk about #{name}."
puts "He's #{height} inches tall, which is about #{height_in_cm.round 1} in centimeters."
puts "He's #{weight} pounds heavy, which is about #{weight_in_kg.round 2} in kilograms."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

#adds my age, my height and my weight to create a number

puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."


