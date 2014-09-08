 #i = 0 
 #numbers = []
 
 #while i < 6
 #  puts "at the top i is #{i}"
 #  numbers.push(i)
   
 #  i += 1
 # puts "Numbers now: ", numbers
 # puts "At the bottom i is #{i}"
 #end
 
 #puts "The numbers: "
 
 # remember you can write this 2 other ways?
 #numbers.each {|num| puts num}
 
 i = 0 
 num = 6
 inc = 1
 $numbers = []
 
 def while_loop(i,num,inc)
   while i < num
   puts "at the top i is #{i}"
   $numbers.push(i)
   
   i += inc
   puts "Numbers now: #{$numbers}"
   puts "At the bottom i is #{i}"
   end
 end
 
 puts while_loop(0,15,5) 
