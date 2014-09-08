 puts "Welcome to the Game!"
 puts "You are standing outside a house in a suburban neighborhood."
 puts "1. You try to open the door."
 puts "2. You try to open the window."

 print ">"
 house = $stdin.gets.chomp 
 
 if house = "1" #house
  puts "The door is locked. "
  puts "1. You walk around the house."
  puts "2. You try to open the window."
  
  print ">"
  input = $stdin.gets.chomp
  
  if input == "1" # input
    puts "You walk around the house into the back yard. The shed door is ajar. what do you do?"
    
    print ">"
    shed = $stdin.gets.chomp
               
    if ['go','walk', 'look','inside'].any? { |w| shed =~ /#{w}/ } #shed
     puts "DON'T DO THAT!!!! OH THE HORROR!!! NOOOOOOOOO!!!"
    else #shed
     puts "Probably better not to go in there, the shed doesn't sound like a very interesting place. You may now pick an orange from one of the nice trees in the yard." 
    end #shed
      
  elsif input == "2" #input
    puts "The window opens, you are inside. Good job! What do you want to do next?"
    puts "1. visit the kitchen"
    puts "2. walk upstairs"
    
    print ">"
    interior = $stdin.gets.chomp
    
    if interior == "1" #interior
     puts "try to get the fridge to open"
     print ">"
     fridge = $stdin.gets.chomp
     
     if ["fridge", "Open", "open", "Fridge"].any? { |w| fridge} #fridge
      puts "Congratulations! You have won some leftover pasta!"
     else #fridge
      puts "Oh, there's nothing in the fridge anyway. Go away you don't even live here!"
      end #fridge
      
    elsif interior == "2" #interior
       puts "You go upstairs and meet Max, the alien zomby who lives in the house. He is very interested in our kind so why don't you sit with him for a while and tell him what it's like not to be a living dead extraterrestrial"  
     end  #interior
     
  elsif house == "2" #house
    puts "The window opens, you are inside. Good job! What do you want to do next?"
    puts "1. visit the kitchen"
    puts "2. go upstairs"
     print ">"
    interior = $stdin.gets.chomp
    
    if interior == "1" #interior
     puts "try to get the fridge to open"
     fridge = $stdin.gets.chomp
     
     if ["fridge", "Open", "open", "Fridge"].any? { |w| fridge} #fridge
      puts "Congratulations! you have won some leftover pasta!"
     else #fridge
      puts "Oh, there's nothing in the fridge anyway. Go away you don't even live here!"
      end #fridge
      
    elsif interior == "2" #interior
       puts "You go upstairs and meet Max, the alien zomby who lives in the house. He is very interested in our kind so why don't you sit with him for a while and tell him what it's like not to be a living dead extraterrestrial"  
     end  #interior
     
    end #input
  
 end #house
 
 
