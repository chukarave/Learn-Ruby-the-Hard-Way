
####################### INHERITANCE #################################


class Parent
  #defining the implicit method of the parent class
  def implicit()
    puts "PARENT implicit"
  end
end

# defining the Child class as inherited from Parent
class Child < Parent
end


# dad is new instance of class Parent
dad = Parent.new()
# son is a new instance of class Son
son = Child.new()

# calls the implicit method out of the Parent class
dad.implicit()
# calls the implicit method out of child class (which is actually the inherited method from parent class.)
son.implicit()


puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++"

class Parent
  # defining the override method of the parent class
  def override()
    puts "PARENT override()"
  end
end

#creating the child class as inherited from the parent class
class Child < Parent
  
  # defining the override method differently in the child class, but with the same name so that it overrides the one in the parent class.
  def override()
    puts "CHILD override()"
  end
end

# dad is a new instance of the Parent class
dad = Parent.new()
# son is a new instance of the Child class
son = Child.new()

# calls the override method of the Parent class
dad.override()
# calls the modified override method of the Child class
son.override()

puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++"
# create the Parent class with the altered method in it 
class Parent 
  def altered()
    puts "PARENT altered()"
  end
end

# creates the Child class as inherited from the parent class
class Child < Parent
  # defines the altered method as an expanded version of the same method in the Parent class.
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super() # jumps to the next level (in this case the Parent class) and runs the same method there then continues with the method as it is defined in the Child class.
    puts "CHILD, AFTER PARENT altered()"
  end
  
end

# dad is a new instance of the Parent class
dad = Parent.new()
# son is a new instance of the Child class
son = Child.new()

# calls the Parent.altered method (print PARENT altered())
dad.altered()
# calls the Child.altered method which in turn calls the Parent.altered method and then the Child.altered() method to the end.
son.altered()
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++"

# All three ways combined:
class Parent
  
  # defines the metod override within the Parent class
  def override()
    puts "PARENT override()" 
  end
  
  # defines the implicit method of the Parent class
  def implicit()
    puts "PARENT implicit()"
  end
  
  # defines the altered method of the Parent class
  def altered()
    puts "PARENT altered()"
  end
end

# Child class inherits from parent
class Child < Parent
  # defines the child override() method which will override the Parent override(9 method
  def override()
    puts "CHILD override()"
  end
  
  # defines the Child.altered() method and then jumps to the Parent altered() method, and back to the Child.altered() method
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit() # PARENT implicit()
son.implicit() # PARENT implicit

dad.override() # PARENT override
son.override() # CHILD override

dad.altered() # PARENT altered()
son.altered() # CHILD, BEFORE PARENT altered()
              # PARENT altered()
              # CHILD, AFTER PARENT altered()
              
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"              
#################################### COMPOSITION ##############################              
              
class Other
  # other class override method
  def override()
    puts "OTHER override()"
  end
  # other class implicit method
  def implicit()
    puts "OTHER implicit()"
  end
  # other class altered method
  def altered()
    puts "OTHER altered()"
  end              
end  

class Child
  # initialize method of Child class defines the new instance of the other class as the instance variable @other.
  def initialize()
    @other = Other.new()
  end
  # the Child.implicit() method simply reffers to the Other.implicit() using @other
  def implicit()
    @other.implicit() 
  end
  # the Child override() method does not override the Other.override() method since they do not have Parent-Child relationship.
  def override()
    puts "CHILD override()"
  end
  
  # the Child.altered() method uses the @other instance variable to reach the Other.altered method (similar to how the inherited class used super())
  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end  
end

son = Child.new()

son.implicit() # OTHER implicite()
son.override() # CHILD override()
son.altered()  # CHILD, BEFORE OTHER altered()
               # OTHER altered()
               # CHILD, AFTER OTHER altered  
               
puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"              
#################################### MIXINS #######################   

module Other

  def override()
    puts "OTHER override()"
  end
  
  def implicit()
    puts "OTHER implicit()"
  end
  
  def Other.altered()
    puts "OTHER altered()"
  end
end

class Child
  include Other
  
  def override()
    puts "CHILD override()"
  end  
  
  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    Other.altered
    puts "CHILD, AFTER OTHER altered()"
  end
end                

son = Child.new()

son.implicit()
son.override()
son.altered()               
