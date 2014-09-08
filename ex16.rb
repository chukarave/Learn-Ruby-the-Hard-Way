filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets 

puts "Opening the file..."
#sets variable target to the name of the file
target = open(filename, 'w')

puts "Truncating the file. Goodbye"
#deletes the file. what is the parameter?
target.truncate(0)

puts "Now i'm going to ask you for three lines. "

#gets user input for three text lines 
print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

#target.write("#{line1}\n#{line2}\n#{line3}")

omg = "%{first}\n#{line2}\n%{third}\n" % {first: line1, third: line3}

target.write(omg)

puts "And finally, we close it"
#closes file
target.close
