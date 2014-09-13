 animals = ['bear','ruby','peacock','kangaroo','whale','platypus']
 ordinals = ['1st', '2nd', '3rd', '4th', '5th', '6th']
 
(0..5).each do |i|
   puts "The #{ordinals[i]} animal is #{animals[i]} and has the cardinal number of #{i}"
end

# ruby
# peacock
# bear
# kangaroo
# whale
# peacock
# platypus
# kangaroo
