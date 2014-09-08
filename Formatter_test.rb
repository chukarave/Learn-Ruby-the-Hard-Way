formatter = '%{cat} %{dog} %{snake} %{pig}'

puts formatter % {cat: 'mitzi', dog: 'dawg', snake: 'pete', pig: 'babe'}
puts formatter % {cat: 'red', dog: 'white', snake: 'green', pig: 'pink'}
puts formatter % {cat: 'scratch', dog: 'bite', snake: 'bite', pig: 'oink'}

cat = 'mitzi'
dog = 'dawg' 
snake = 'pete'
pig = 'babe'
horse = 'shodowfax'
frog = 'Kermit'

puts "I want to call my cat\f #{cat}" 
puts "\ni want to call my dog\v #{dog}" 
puts "\nI want to call my snake\t #{snake}"
puts "\nI want to call my pig \"#{pig}\""    
    




