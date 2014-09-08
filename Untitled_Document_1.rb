 def gold_room
   puts "This room is full of gold. How much do you take?"
   
   print "> "
   choice = $stdin.gets.chomp
   
   if choice =~ 0 || choice =~ 1    
    print choice
    #how_much = choice
   else
     dead("Man, learn to type a number")
   end
   
   if how_much < 50
     puts "Nice, you're not greedy, you win!"
     exit(0)
   else
     dead("You greedy bastard!")
   end
 end
 
 
 gold_room
