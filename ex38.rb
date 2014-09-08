 ten_things = "Apples Oranges Crows Telephone Light Sugar"
 
 puts "Wait there are not 10 things on that list. Let's fix that."
 
 stuff = ten_things.split(' ') # split(ten_things, ' '). calls the split method on the variable ten_things with the separator ' ',
 
 more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]
 

  while stuff.length != 10 
    next_one = more_stuff.pop #pop(more_stuff)
    puts "Adding: #{next_one}"
    stuff.push(next_one) #push(next_one, stuff) push next_one into stuff
    puts "There are #{stuff.length} items now."
 end
 

 puts "There we go: #{stuff}"
  
 puts "Let's do some things with stuff."
 
 puts stuff[1]
 puts stuff[-1]
 puts stuff.pop() #pop(stuff) omit the last element from stuff
 puts stuff.join(' ') #join(stuff) join all under stuff using ' ' 
 puts stuff[3..5].join("#") #join(stuff[3],stuff[4],stuff[5] "#") join numbers 3-5 using #
 
