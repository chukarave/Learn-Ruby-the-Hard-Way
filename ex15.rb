#saves the entered argument under the variable 'filename'
filename = ARGV.first

#the variable txt is set to the method .open applied on the 'filename' variable
txt = open(filename)

#prins here's your file by what the user has given as an argument when running the program.
puts "Here's your file #{filename}"
#prints the contents of the file
print txt.read

#closes file
txt.close

#prints the text
print "Type the filename again: "
#gets the user input and assigns it to the variable 'file_again'
file_again = $stdin.gets.chomp

#the variable 'txt_again' is set to the method .open applied on the variable 'file_again'
txt_again = open(file_again)

#prints the contents of the file
print txt_again.read

#closes file
txt_again.close

