class Engine
  def play(scene)
    current_scene = scene  
    last_scene = ScotFree
    
    while current_scene != last_scene
    current_scene = current_scene::enter()
    puts "The adventurer now continues to the #{current_scene.to_s}"  
    end
  end
end

