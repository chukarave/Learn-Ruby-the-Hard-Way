module Tree
  def self.enter()
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><"
    puts "You step into the woods, crackling twigs with every step. Soon, you hear a Wolf's howl. Quick! what do you do?"
    puts "1. Climb a tree"
    puts "2. Hide behind a tree"
    
    print ">"
    action = $stdin.gets.chomp
    
    if action == "1"
    puts "You climb up a tree and stay there almost cpmpletely still. You see the wolfs passing under the trees, not noticing you. You stay there for an hour before you come down and continue your path quietly."
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    Swamp::enter
    elsif action == "2"
    puts "You hide behind a tree, but not good enough. A wolf spots you. You start running as fast as you can, not noticing where to. The wolf chases you. Eventually you find yourself outside the woods, at the starting point."
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    Beginning::enter
    end
  end
end
