 class Organism
   
   def initialize(name)
     ## cat has-a name
     @name = name
     
   end  
 end
 
 class Flora < Organism
 
   def plant
     puts "#{@name} is a plant."
   end
 end
 
 class Fauna < Organism
    
    def animal
      puts "#{@name} is an animal."
    end
 end
 
 
 class LandPlants < Flora
 
 
   def land_plant
     puts "#{@name} is a plant which grows on or under land."
   end
 end
 
 class WaterPlants < Flora
   
   def water_plant
     puts "a #{@name} is a plant which grows either on, or under water." 
   end
 end
 
 
 class Trees < LandPlants
 
   def tree
     puts "a #{@name} is a plant of type tree"
   end
   
 end
 
 class Vegetables < LandPlants
   
   def vegetable
   puts "a #{@name} is a plant of type vegetable"
   end
 end 
 
 class Mammals < Fauna
   
   def mammal
    puts "#{@name} is a mammal and therefore doesn't lay any eggs."
   end
 end
 
 class Birds < Fauna
 
   def bird
     puts "#{@name} is a type of bird, therefore it has wings."
   end
 end
 
 class Amphibians < Fauna
 
   def amphibian
     puts "#{@name} is an animal of type amphibian which means it leaves mostly within water."
   end
 end
 
 class Bears < Mammals
 
   def bear
     puts "#{@name} is a mammal of type bear."
   end
 end
 
 class Ducks < Birds
 
   def duck
     puts "#{@name} is a bird of type duck."
   end  
 end 
 
 class Frogs < Amphibians
 
   def frog
     puts "#{@name} is an amphibian of type frog. it is presumably green."
   end
 end
 
 
 
 kermit = Fauna.new("Kermit")
 kermit = Amphibians.new("Kermit")
 kermit = Frogs.new("Kermit")
 cactus = Flora.new("Cactus")
 waterlilly = WaterPlants.new("Water Lilly") 
 oak = Trees.new("Oak")
 
 
 cactus.plant
 waterlilly.plant
 waterlilly.water_plant
 kermit.animal
 kermit.amphibian
 kermit.frog
 oak.land_plant
