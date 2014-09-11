class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()"
    exit(1)
  end
end

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    # variable current_scene is set to Map.opening_scene which in turn returns the next_scene and starts it
    current_scene = @scene_map.opening_scene()
    
    # variable last_scene is set to Map.next_scene with the scene name: finished meaning: if this is the last scene, I should be sent to scene 'finished'
    last_scene = @scene_map.next_scene('finished')

 # as long as the current scene isn't the last, set name of next scene to Map.next_scene
    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

   current_scene.enter()
  end
end


class Death < Scene

  @@quips = [
  "Wrong move! You are now dead, G'bye",
  "I'm pretty sure you should be trying not to die. but suit yourself, goodbye", 
  "How the heck did you manage to die again?!",
  "Don't worry, it'll be nicer now you're in heaven. Goodbye"
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end

class CentralCorridor < Scene

  def enter()
    puts "You are on a space ship."
    puts "Aliens from planet percal #25 have invaded your ship"
    puts "These are Gothons. They are big and white and have tanticles all over their face."
    puts "They mean you harm. The have destroyed your entire crew andare the last surviving crew member of the ship"
    puts "In order to survive, you should get nuetron bomb from the Weapon Armory and set it to blow once you are on the escape pod on your way to the planet below."
    puts "You are standing in the ship's central corridor"
    puts "There is a Gothon standing in the corridor and is about to pull a weapon on you"
    puts "What do you do?"
    print ">"

    action = $stdin.gets.chomp

    if action == "run"
      puts "you turn around and start running to the other direction. The Gothon however, is fater than you and is already there"   
      puts "you turn around again but it teleports itself infront of you again"
      puts "You try to jump to the cieling, but the Gothon manages shots lasers at you"
      puts "This was an unfortunate choice."
      return 'Death'

    elsif action == "shoot"
      puts "You pull your laser gun and aim at the Gothon."
      puts "The Gothon splits to two Gothons!"
      puts "You manage to shoot and destroy one, but unfortunately the other one shoots you"     
      return 'Death'

    elsif action == "tell a joke"
      puts "Lucky for you they made you learn Gothon insults in the academy."
      puts "You tell the one Gothon joke you know:"
      puts "Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr."
      puts "The Gothon stops, tries not to laugh, then busts out laughing and can't move."
      puts "While it's laughing you run up and shoot it square in the head"
      puts "putting it down, then jump through the Weapon Armory door."
      puts "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
      return 'laser_weapon_armory'

    else
      puts "DOES NOT COMPUTE!"
      return 'central_corridor'
    end
  end  
end


class LaserWeaponArmory < Scene

  def enter()
    puts "You've made it to the armory! But look out! there could be Gothons anywhere!"
    puts "You duck and inspect the surface."
    puts "You notice the nuetron bomb in a big case in one corner of the room."
    puts "You sneak over there and try to open the case. It is however, locked."
    puts "There is a keypad, which allows openning the case with a code."
    puts "You don't know the code, but you remember you can guess wrong for 10 times before it locks forever."
    puts "The code is 3 digits. Try and get the bomb. Hurry!"
    code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    print "[keypad]> "
    guess = $stdin.gets.chomp
    guesses = 0

    while guesses < 10 && guess != code
      puts "BZZZDDD! Wrong code"
      guesses += 1
      print "[keypad]> "
      guess = $stdin.gets.chomp
    end

    if guess == code 
      puts "You guessed it! You are incredibly awesome!"
      puts "Get the neutron bomb and run as fast as you can to the"
      puts "bridge where you must place it in the right spot."
      return 'TheBridge'

    else
      puts "You have tried 10 times and did not succeed"
      puts "The lock clicks and is locked for ever."
      puts "The Gothons have heard the multiple buzzes and beeps from your failed attempts and are already at the door."
      puts "You are dead."
      return 'Death'
    end
  end
end

class TheBridge < Scene

  def enter()
    puts "You have made it to the bridge! Well done."
    puts "Uh oh - The bridge is full of Gothons! They haven't pulled their laserguns yet, as they can see the bomb under your arm."
    puts "What do you do?"
    print ">"

    action = $stdin.gets.chomp

    if action == "throw the bomb"
      puts "The Gothons rush to catch the bomb and stomp each other in the process."
      puts "You try to get to the escape pod, but get stomp by a paniced Gothon trying to get to the door before you. You then die."
      return 'Death'

    elsif action == "place the bomb on the ground"
      puts "You aim your lasergun at the bomb. The Gothons start to sweat."
      puts "They do not pull out their weapons on fear of setting off the bomb"
      puts "You set the bomb gently on the ground, your laser aimed to it all along."
      puts "With one swing you shut the door and shoot the lock so that the Gothons can't get out."
      puts "You then quickly make your way into the excape pod."
      return 'escape_pod'
    else
      puts "DOES NOT COMPUTE"
      return 'the_bridge'
    end
  end
end


class EscapePod < Scene

  def enter()
    puts "You run to the escape pod, while other Gothons attempt to open the bridge door."
    puts "You get to the escape pod chamber. There are 5 pods and you need to choose one."
    puts "Some of the pods might be damaged. you don't have time to check each of them."
    puts "Remember! you only get one chance before the Gothons arrive, or the ship explodes!"
    puts "Which number of pod do you choose?"
    print "Pod >"

    pod = $stdin.gets.chomp

    good_pod = rand(0..5)

    if pod != good_pod
      puts "You jump into pod %s Oh no! this one is Kaputt! the engine is not even starting and the fuel tank is empty. 3..2..1.." % guess
    sleep(50)
      puts "KABOOM"
    elsif pot == good_pod
      puts "The pod engine starts and you fly the hell away from this ship."
      puts "Above you, you are able to see the ship exploding. You feel the blast but are able to continue your descent into the plant."

      return 'finished'
    end
  end
end

class Finished < Scene

  def enter()
    puts "Well done! You won!"
  end
end

class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    'finished' => Finished.new()
  }

  # set the 'start_scene' attribute to be used by the openning scene method
  def initialize(start_scene)
    @start_scene = start_scene
  end

  # method next_scene takes argument scene_name 
  def next_scene(scene_name)
    # val is set to the scene name from the hash 
    val = @@scenes[scene_name]
    return val
  end

  # method opening_scene which returns the 
  def opening_scene()
    return next_scene(@start_scene)
  end
end


a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
