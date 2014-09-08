def black_and_red_cats (num_black, num_red)
    puts "This function counts your cats!"
    puts "You have #{num_black} black cats. "
    puts "But you also have #{num_red} red cats."
end

puts "a."
black_and_red_cats(20, 15)

puts "b." 
red_cats = 100
black_cats = 4
black_and_red_cats(red_cats, black_cats)  

puts "c."
black_and_red_cats(88 - 78, 98 - 48)

puts "d."
black_and_red_cats(red_cats - 20, 4 + black_cats)

puts "e."
black_and_red_cats(2, black_cats)

puts "f."
black_and_red_cats("20", "1")

puts "g."
black_and_red_cats(4 * 2,"584")

puts "h."
black_and_red_cats(red_cats, '120')

puts "i."
black_and_red_cats('12'.to_i, 34)

puts "j"
black_and_red_cats(red_cats / 4, "10".to_i * 2)



