def start
  puts "Welcome!"
  puts "you are standing at the entrance of the house."
  puts "Type 1 to go to the kitchen, 2 to go upstairs, 3 if you're not sure."

  puts ">"
  input = $stdin.gets.chomp

  if input == "1"
    puts "Going to the kitchen..."
    (0..2).each {|i| puts "...."; sleep(0.50)}
    kitchen
  elsif input == "2"
    puts "Going upstairs"
    (0..2).each {|i| puts "====="; sleep(0.50)}
    upstairs
  else
    doom("In this house, you should only go where you're allowed.")
  end
end

def kitchen
  puts "Welcome to the kitchen! \\o/"
  puts "Let's put the cattle on. How many sugars do you take?"

  how_many = number_input

  if how_many <= 1
    puts "Way to go! George Orwell would have been proud: http://www.booksatoz.com/witsend/tea/orwell.htm"
  elsif how_many > 1 && how_many < 4
    puts "That's close to 1 therefore close to 0, maybe you don't even need sugar? Try without it for two weeks and you'll never want sugar in your tea again!"
  elsif how_many > 4
    puts "#{how_many} sugars???!! that's a lot! have you heard of diabetes?!"
  else
    doom("This amount of sugar is not recommended for humans.")
  end
end

def upstairs
  puts "You have reached the top of the stairs! Look left or right."

  print ">"
  look = $stdin.gets.chomp

  if look == "left"
    puts "Here's Max! he's an alien zomby. Do you want to..."
    zomby("Max")

  elsif look == "right"
    puts "Here's Mari! she's an alien zomby. Do you want to..."
    zomby("Mari")
  else
    doom("don't look where you're not told to look")
  end
end

def doom(why)
  puts why, "KTHXBAI"
  exit(0)
end

def number_input

  puts ">"
  num_input = $stdin.gets.chomp

  if num_input =~ /^[0-9]+$/
    return num_input.to_i
  else
    doom("not a number, therefore you die")
  end
end

def zomby(zomby_name)
  puts "1. say hello"
  puts "2. attack"

  print ">"
  action = $stdin.gets.chomp

  if action == "1"
    puts "#{zomby_name} is a very nice zomby. You've made a new friend, HIGH FIVE!"
  else
    puts "Remember your manners next time, you should always say hello."
    doom ("#{zomby_name} eats your brains.")
  end
end

start

