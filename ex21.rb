def add(a, b)
   puts "ADDING #{a} + #{b}"
   return a + b
end

def subtract(a, b)
   puts "SUBTRACTING #{a} - #{b}"
   return a - b
end

def multiply(a, b)
   puts "MULTIPLYING #{a} * #{b}"
   return a * b
end

def divide(a, b)
   puts "DIVIDING #{a} / #{b}"
   return a / b
end
   
   
puts "Let's do some math with just functions!"

age = add(3, 1)
height = subtract(10, 5)
weight = multiply(50, 4) 
iq = divide(120, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. can you do it by hand?"
