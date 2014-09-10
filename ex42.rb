 ## Animal is-a object look at the extra credit
 class Animal
    def initialize(name)
     ## cat has-a name
     @name = name
   end
   
   def hello
     puts "Hello #{@name}" 
     end
 end
 
 
 ## Dog is-a Animal
 class Dog < Animal
   
   def describe
     puts "#{@name} is a dog"
   end
     
 end
 
 
 class Dachshund < Dog
   def describe
     puts "#{@name} is a Dachshund dog"
   end
 end
 
 ## Cat is-a Animal
 class Cat < Animal
   
  
 end
 
 ## Person is-a Animal
 class Person
   
   def initialize(name)
     ## Person has a name
     @name = name
     
     ## Person has_a pet of some kind
     @pet = nil
   end
   
   attr_accessor :pet
 end
 
 ## Employee is-a Person
 class Employee < Person
 
   def initialize(name, salary)
     ## 
     super(name)
     ## Person has-a salary
     @salary = salary
   end
   
 end
 
 ## Fish is a Fish
 class Fish < Animal
 end
 
 ## Salmon is-a Fish
 class Salmon < Fish
 end
 
 ## Halibut is -a Fish
 class Halibut < Fish
 end
 
 
 ## rover is-a Dog
 rover = Dog.new("Rover")
 
 kirk = Dachshund.new("Kirk")
 ## satan is-a cat
 satan = Cat.new("Satan")
 
 ## Mary is-a Person
 mary = Person.new("Mary")
 
 ## mary has-a pet attribute set as satan
 mary.pet = satan
 
 ## Frank is-a new instance of class employee with the attributes Frank(name) and 120000(salary)
 frank = Employee.new("Frank", 120000)
 
 ## frank has-a pet attribute set as rover
 frank.pet = rover
 
 ## flipper is an instance of the class Fish
 flipper = Fish.new("Fish")
 
 ## crouse is an instance of the class Salmon
 crouse = Salmon.new("Salmon")
 
 ## harry is an instance of the class Halibut
 harry = Halibut.new("Halibut")  
 
 
 rover.describe
 kirk.describe
 flipper.hello
 
 



 
