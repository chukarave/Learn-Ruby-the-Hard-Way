module Wall 
  def self.enter()
    puts "It is not long before you encounter a huge wall in the middle of the forest. It is too tall to climb over. What do you do?"
    puts "1. Try to dig under the wall\n2. Try to walk around it"
    
    print ">"
    user_action = $stdin.gets.chomp
    
      if user_action == "1"
        puts "The only tool you can find around you are some flat rocks lying next to the wall."
                
        puts "enter the letter D to dig"
        print ">"
        d = $stdin.gets.chomp
        # the user will have to print D (or whatever, not verifying that) for 7 times before continuing      
        i = 0
        while i < 7
          i += 1
          puts "Not there yet, try digging some more.\n"
          print ">"
          d = $stdin.gets.chomp
        end
       
        puts "You made it! You are on the other side of the wall!"
        puts "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        ScotFree::enter # move to Scotfree scene
      elsif user_action == "2" 
        puts "You walk along the wall. It\'s long and the walk is taking a while."
        sleep 4
        puts "You walk and and walk for hours until finally, you reach the end of the wall." 
        sleep 4
        puts "As you look around you realise it had brought you to your starting point outside the forest."
        puts "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        sleep 4
        return Beginning # start from beginning
        
      end
   end
 end     
      
      

