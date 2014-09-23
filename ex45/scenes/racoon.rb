module Racoon 
  def self.enter()
    puts 'You suddenly arrive at a small clearing in the woods. In the middle of it, a rock. On top of the rock - a racoon.' 
    puts 'The racoon startles you as it suddenly speaks, saying'
    puts '"Welcome bystander! You must answer one of these questions correctly to continue."'
        
    until Trivia::run 
      puts '"Wrong!" screams the racoon, drunk with power. "You must answer correctly in order to pass! Here\'s another one:"'
    end
    
      puts 'The racoon stares at the ground. "You may now continue through the forest." He says, defeatedly. "May you reach your goal safely. I really have to find more difficult questions."'
      puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    return Wall
  end
end

