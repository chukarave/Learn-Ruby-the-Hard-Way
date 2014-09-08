# -*- coding: utf-8 -*-

# variables 

# number of cars
cars = 100

# how many passengers fit in a car
space_in_a_car = 4

# number of drivers
drivers = 30

# number of passengers 
passengers = 90

# cars that don't have drivers
cars_not_driven = cars - drivers

# how many cars were driven 
cars_driven = drivers 

# how many people are we able to transport
carpool_capacity = cars_driven * space_in_a_car

# avarage number of people in each car
avarage_passengers_per_car = passengers / cars_driven 

# how many available cars there are today
puts "There are #{cars} cars available."

# how many drivers are available today
puts "There are only #{drivers} drivers available."

# how many empty cars are available today
puts "There will be #{cars_not_driven} empty cars today."

# how many people will be transported today
puts "We can transport #{carpool_capacity} people today."

# how many passengers we have today
puts "We have #{passengers} to carpool today"

# how many passengers will be sitted within each car
puts "We need to put about #{avarage_passengers_per_car} in each car."
