module Trivia
  def self.run
    quiz = [
      {
        question: "Which planet is closest to the sun?",
        answers: ["Mercury", "Pluto", "Mars" "Venus"],
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
    
    puts current[:question]
    
    current[:answers].each_index do |i|
      puts "#{i+1}: #{current[:answers][i]}"  
    end
    
    input = $stdin.gets.chomp.to_i
    
    if input -1 == current[:correct]
      return true
    else
      return false
    end
  end
end




