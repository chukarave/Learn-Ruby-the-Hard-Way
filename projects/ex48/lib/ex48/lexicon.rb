module Lexicon
   
  def self.scan(direction)

   words = direction.split # method arguments split into an array of separate words
   
   result = [] # result is an emptyy array 
   
   words.each do |x|
     result.push(scan_word(x)) 
   end
   # each element from 'words' is pushed in the 'result' array while calling the scan_word method
   return result # the method .scan called in the test returns the 'result' array
   
  end
  
  def self.scan_word(word)
    type = get_word_type(word)  # type is the hash key for that word. e.g. type for 'kill' would be 'verb'
      if type == 'number'
        word = word.to_i    # converts the word into an integer if the returned type is 'number'
      end
    return [type, word]     # returns the .scan method the [type, word] pair, to be returned to the test.
  end
  
  def self.get_word_type(word)
    begin
      Integer(word)
      return 'number'       # convert word into integer. as long as no exception was thrown, the returned type would be 'number' 
    rescue                  # if the word could not be converted into an integer, the rescue makes ruby jump to the next bit of code.
     # nothing happens 
    end
    WORD_TYPES.each_pair do |type, words|
      if words.include? word
        return type         # iterates on the WORD_TYPE hash and if the value matches our word it returns its key i.e. the type.
      end
    end
    return "error"          # if the type is not a number and not found in the hash, the type returned is 'error' 
  end
  
  WORD_TYPES = {
    "direction" => [           # each hash key has an array or words as a value. {a => [a, b, c], b => [a, b, c]} 
      "north",
      "south",
      "west",
      "east"
       ],
    "verb" => [
      'go', 
      'kill',
      'eat'
      ],
    "stop" => [
      'the',      
      'in',
      'of',
      'from',
      'at',
      'it'    
    ],
     "noun" => [ 
       'bear',
       'princess' 
           ]
  }
  
 
  
end




