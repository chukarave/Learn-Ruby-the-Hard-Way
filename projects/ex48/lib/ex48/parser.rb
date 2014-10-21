class ParserError < Exception
end

class Sentence 

  def initialize(subject, verb, num, obj)
    @subject = subject   # create class variables 
    @verb = verb
    @number = num
    @object = obj
  end    
  
  attr_reader :subject
  attr_reader :verb
  attr_reader :number
  attr_reader :object  # makes the variable accessible from outside the class 
end

module Parser  
  def self.peek(word_list) # peeks at the list of words and recognizes what type they are
    if word_list
      word = word_list[0]
      return word[0]
    else
      return nil
    end  
  end
  
  def self.match(word_list, expecting) # matches the word type to the expected type
    if word_list
      word = word_list.shift # removes the 1st word of the word list and returns it 
      if word[0] == expecting # there should be only one word in array 'word' thats why [0] will supply the required result.
        return word
      else
        return nil
      end
    else
      return nil
    end
  end
  
  def self.skip(word_list, word_type) # skips any word that is not a noun or verb
    if String === word_type
      word_type = [word_type]
    end  
    
    while word_type.include? peek(word_list) 
      match(word_list, word_type)
    end
  end
  
  def self.parse_verb(word_list)
    skip(word_list, 'stop')
  
    if peek(word_list) == 'verb'  # if the type of word matches 'verb'
      return match(word_list, 'verb') # take it off the list
    else
      raise ParserError.new("Expected a verb next.") # raise an instance of the 
    end                                          # parser error class with a message
  end
  
  def self.parse_object(word_list)
    skip(word_list, 'stop')     # skips stop words
    next_word = peek(word_list) # set next_word to peek at the list  
    
    if next_word == 'noun'  # peek at the list and if the word matches the key 'noun'
      return match(word_list, 'noun') # return the word with 'noun'
    elsif next_word == 'direction'
      return match(word_list, 'direction') # if the word matches 'direction' return the word and 'direction'
    else
      raise ParserError.new("Expected a noun or direction next.")
    end      
  end
  
  def self.parse_subject(word_list)
    skip(word_list, 'stop')
    next_word = peek(word_list)
    
    if next_word == 'noun'
      return match(word_list, 'noun')
    elsif next_word == 'verb'
      return ['noun','player']
    else
      raise ParserError.new('Expected a verb next')
    end      
  end
  
  def self.parse_number(word_list)
    skip(word_list, 'stop')
    next_word = peek(word_list)
    
    if next_word == 'number'
     return match(word_list, 'number')
    
    else 
      raise ParserError.new('Expected a number next') 
    end 
  end
  
  
  def self.parse_sentence(word_list)
    subj = parse_subject(word_list)
    verb = parse_verb(word_list)
    begin    
      num = parse_number(word_list)
    rescue ParserError => error    # variable to put the exception in
      num = ['number', 1]
    end
    obj = parse_object(word_list)
    
    return Sentence.new(subj, verb, num, obj)
  end
end









