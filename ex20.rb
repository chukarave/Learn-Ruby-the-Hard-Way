#takes user input into ARGV
input_file = ARGV.first

#function, prints the file's contents
def print_all(f)
   puts f.read
end

#function, starts from the begining of the file. f.seek(0) goes to byte 0 of the file
def rewind(f)
   f.seek(0)
end

#prints a line inside the file depending on user input
def print_a_line(line_count, f)
   puts "#{line_count}, #{f.gets}" #what does it gets.chomp ? the file?
end   
  
#the variable 'current_file' opens the input file 
current_file = open(input_file)

puts "First let's print the whole file:\n"

#calls the method print_all on the input file
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

#goes back to the start of the file using the method rewind
rewind(current_file)

puts "Let's print three lines: "

#defines the current_line variable as 1
current_line = 1
#calls the print_a_line method on the current file, in the current line (1)
print_a_line(current_line, current_file)

#sets the current line variable to 2 by incrementing the current_line by 1. current line is 2
current_line += 1
#prints another line
print_a_line(current_line, current_file)


current_line += 1 # current line is 3
print_a_line(current_line, current_file)
