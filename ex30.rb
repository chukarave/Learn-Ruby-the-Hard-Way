 people = 10
 cars = 18
 trucks = 15
 
 #begining of IF statement, checks if the are more cars than people
 if cars > people 
 #prints if IF is true
   puts "We should take the cars."
 # checks if there are more people than cars  
 elsif cars < people 
   puts "We should not take the cars"
 # checks if a another option is true. in this case cars == people
 else
   puts "We can't decide"
 # end of IF statement
 end
 
 # checks if there are more trucks than cars.
 if trucks > cars && people == true
 # prints if IF is true
   puts "That's too many trucks."
 # checks if there are more cars than trucks
 elsif trucks < cars
   puts "Maybe we could take the trucks."
 # if any other option is taking place. e.g. tracks == cars
 else 
   puts "We still can't decide"
 end
 
 # checks if there are more people than trucks
 if people > trucks && cars <= people
 # prints in case IF is true
   puts "Alright, let's just take the trucks."
 #checks if any other option is true
 else
   puts "Fine, let's stay at home then."
 end
