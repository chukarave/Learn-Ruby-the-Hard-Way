from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

#opens and reads the from_file
in_file = open(from_file)
indata = in_file.read

#reports the length of the from_file using the .length method
#puts "The input file is #{indata.length} bytes long"

#requests input if file exists
puts "Does the output file exist? #{File.exist?(to_file)}"


#opens the to_file in write mode
out_file = open(to_file, 'w')
#writes to the opened to_file the indata variable which contains the contents of the from_file
out_file.write(indata)

puts "Alright, all done."

#closes files
out_file.close
in_file.close
