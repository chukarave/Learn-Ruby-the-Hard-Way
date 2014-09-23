module Beginning 
  def self.enter()
    puts "You are an adventurer, wandering around the world, never staying too long in one place. You are on your way from one town to the next when you come across a massive woodland."
    puts "There doesn't seem to be a way around it. You decide to walk through it."
    puts "Which path do you take: Right or Left?"
    
    print ">"
    action = $stdin.gets.chomp
    
    if action == "Right" || action == "right"
    Tree::enter
    elsif action == "Left" || action == "left"
    Racoon::enter
    else 
    puts "You must choose left or right. There is no inbetween!"
    (0..2).each {|x| puts "++++++++++"; sleep 1}
    self.enter
    end
  end
end


