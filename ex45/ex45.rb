require "./engine.rb"
require "./scenes/beginning.rb"
require "./scenes/tree.rb"
require "./scenes/swamp.rb"
require "./scenes/trivia.rb"
require "./scenes/racoon.rb"
require "./scenes/wall.rb"
require "./scenes/scotfree.rb"


a_round = Engine.new()
a_round.play(Beginning)

