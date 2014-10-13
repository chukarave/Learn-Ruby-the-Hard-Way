module Swamp
  def self.enter()
    puts "You reach a huge swamp, crawling with aligators and other suspicious looking creatures."
    
    puts "\nYou notice a small floating bridge, about 20 meters long, connected to the stemms of massive trees on each side of the swamp."
    
    puts "The bridge looks unstable. Some of the boards are missing, others seem like they're about to break. If you want to cross it, you'll need to go about it carefully."
   
    def self.steps              # steps is a separate method therefore has to be called with 'self.' again. 
      puts "How many steps do you take in order to cross the bridge?"
  
      print ">"
      step = $stdin.gets.chomp.to_i

      if step <= 5
        step.times {|i| print "ZZ "; sleep(0.60)}  # prints ZZ for the number of times entered as steps  
        puts "\nNot enough steps! You should rethink this!"
        puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        return self.steps
      elsif step.between?(5, 15) == true
        step.times {|i| print "LL "; sleep(0.50)}  ## prints LL for the number of times entered as steps 
        puts "\nYou would have to take huge leaps in order to cross the bridge with this amount of steps. Not sure the bridge is going to hold that. Maybe reconsider?"
        puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        return self.steps
      elsif step >= 15
        step.times {|i| print "EE "; sleep(0.40)} ## prints EE for the number of times entered as steps 
        puts "\nYou made it through the swamps! Good on you!" 
        return ScotFree # returns ScotFree to the engine where it will set it as last scene 
      end  
    end
    steps
  end
end


