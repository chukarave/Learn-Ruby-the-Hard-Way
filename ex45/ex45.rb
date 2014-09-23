require "./engine.rb"
require "./scenes/beginning.rb"
require "./scenes/tree.rb"
require "./scenes/swamp.rb"
require "./scenes/trivia.rb"
require "./scenes/racoon.rb"
require "./scenes/wall.rb"
require "./scenes/scotfree.rb"

# Engine is a module and not a class, therefore no need for new instance 
Engine::play(Beginning)
