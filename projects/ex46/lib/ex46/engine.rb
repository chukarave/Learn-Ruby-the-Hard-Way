module Engine
  def self.play(scene) # without self the method within the module is unreachable 
    current_scene = scene  
    last_scene = ScotFree
    go_to_next = true 
    
    while go_to_next
      if current_scene == last_scene 
        go_to_next = false               # the loop runs as long as the current scene is not the last and sets  
      end                                # variable to false till the last scene where it continues  
                                         # to the next code
                                        
      
      puts 
      puts "The adventurer now continues to the #{current_scene.to_s}"  
      puts
      
      current_scene = current_scene::enter() # calls the enter() method of each module (each scene)
 
    end
  end
end


# classes are modules that may be instanciated, therefore methods with self. will not be automatically received by inctanciating.
