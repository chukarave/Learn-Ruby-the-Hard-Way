module Engine
  def self.play(scene)
    current_scene = scene  
    last_scene = ScotFree
    go_to_next = true
    
    while go_to_next
      if current_scene == last_scene 
        go_to_next = false 
      end  
      
      puts 
      puts "The adventurer now continues to the #{current_scene.to_s}"  
      puts
      
      current_scene = current_scene::enter()
 
    end
  end
end

