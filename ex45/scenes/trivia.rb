module Trivia
  def self.run
    #quiz is an array of small Hashmaps which contain 3 key - value pairs, one of them an array by itself.
    
    quiz = [
      {
        question: "Which planet is closest to the sun?",
        answers: ["Mercury", "Pluto", "Mars", "Venus"],
        correct: 0
      },
      {
        question:"How many holes are there in a ten pin bowling ball?", 
        answers: ["4","6", "3", "1"],
        correct: 2
      },
      {    
        question: "What is a baby seal called?",
        answers: ["A Pup","A Cub", "A Quinaman", "Herbert"],
        correct: 0
      },
      {       
        question: "How many valves or keys does a trumpet have?",
        answers: ["2","3", "8", "5"],
        correct: 1      
      },
      {
        question: "How is the number 5 written in Roman numerals?",
        answers: ["VII","X", "IX", "V"],
        correct: 3     
      },
      {        
        question: "What cheese shares its name with an English Gorge?",
        answers: ["Gorgonzola","Stilton", "Cheddar", "Lancashire"],
        correct: 2 
      },
      {    
        question: "How many wings does a bee have?",
        answers: ["2","4", "6", "8"],
        correct: 1     
      }
    ]
    
    current = quiz.sample   
    
    puts current[:question]                   # puts a random question
    
    current[:answers].each_index do |i|       # puts the answers array with corresponding numbers.       
      puts "#{i+1}: #{current[:answers][i]}"  # i+1 so the answers numbering displayed to the user
    end                                       # will begin with 1 and not with 0 like the array index  
    
    input = $stdin.gets.chomp.to_i
    
    if input -1 == current[:correct]    # correct contains the index numbering therefore input needs to be converted back to -1
      return true
    else
      return false       # The module waiting on this return is Racoon. it will use the output to continue 
    end                  # to the next scene 
  end
end




