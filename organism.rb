 class Organism
   
   def initialize(name)
     ## cat has-a name
     @name = name
     puts "Am organism has been created."
   end  
 end
 
 class Flora < Organism
 
   def description
     puts "#{@name} is a plant."
   end
 end
 
 class Fauna < Organism
    
    def description
      puts "#{@name} is an animal."
    end
 end
 
 
 class LandPlants < Flora
 
 
   def description
     puts "#{@name} is a plant which grows on or under land."
   end
 end
 
 class WaterPlants < Flora
   
   def description
     puts "a #{@name} is a plant which grows either on, or under water." 
   end
 end
 
 
 class Trees < LandPlants
   def initialize(name)
     super(name)
     print "it's a tree"
   end

   def description
   super() 
     puts "a #{@name} is a plant of type tree"
   end
   
 end
 
 class Vegetables < LandPlants
   
   def description
   puts "a #{@name} is a plant of type vegetable"
   end
 end 
 
 class Mammals < Fauna
   
   def description
    puts "#{@name} is a mammal and therefore doesn't lay any eggs."
   end
 end
 
 class Birds < Fauna
 
   def description
     puts "#{@name} is a type of bird, therefore it has wings."
   end
 end
 
 class Amphibians < Fauna
 
   def amphibian
     puts "#{@name} is an animal of type amphibian which means it leaves mostly within water."
   end
 end
 
 class Bears < Mammals
 
   def description
     puts "#{@name} is a mammal of type bear."
   end
 end
 
 class Ducks < Birds
 
   def description
     puts "#{@name} is a bird of type duck."
   end  
 end 
 
 class Frogs < Amphibians
 
   def description
   
     puts "#{@name} is an amphibian of type frog. it is presumably green."
   end
 end
 
 
 
 kermit = Fauna.new("Kermit")
 kermit = Amphibians.new("Kermit")
 kermit = Frogs.new("Kermit")
 cactus = Flora.new("Cactus")
 waterlilly = WaterPlants.new("Water Lilly") 
 oak = Trees.new("Oak")
 
 
 cactus.description
 waterlilly.description
 kermit.description
 oak.description
