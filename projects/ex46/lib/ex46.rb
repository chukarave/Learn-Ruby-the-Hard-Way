require "ex46/engine.rb"
require "ex46/scenes/beginning.rb"
require "ex46/scenes/tree.rb"
require "ex46/scenes/swamp.rb"
require "ex46/scenes/trivia.rb"
require "ex46/scenes/racoon.rb"
require "ex46/scenes/wall.rb"
require "ex46/scenes/scotfree.rb"

# Engine is a module and not a class, therefore no need for new instance 
def run 
  Engine::play(Beginning)
end
