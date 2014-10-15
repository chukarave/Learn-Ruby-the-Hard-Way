require "ex48/lexicon.rb"
require "ex48/parser.rb"
require "test/unit"

class TestPARSER < Test::Unit::TestCase
  

  def test_parse_verb_equal()
    result = Parser.parse_verb([['stop', 'the'], 
              ['verb', 'go'],
              ['direction', 'north']])
              
    assert_equal(result, ['verb', 'go'])
  end
  
  def test_parse_verb_raise()
    assert_raise(ParserError) do 
      Parser.parse_verb([['stop', 'the'], ['direction', 'north']])
    end
  end
 
  def test_parse_subject_equal()
    result = Parser.parse_subject([['stop', 'the'], 
              ['noun', 'bear'],
              ['verb', 'go']])
              
    assert_equal(result, ['noun', 'bear'])
  end
  
  def test_parse_subject_raise()
    assert_raise(ParserError) do
      Parser.parse_subject([['stop', 'at'], ['direction', 'north']])
    end
  end
  
  def test_parse_object_equal()
    result = Parser.parse_object([['stop', 'at'],
               ['direction', 'south']])
               
    assert_equal(result, ['direction', 'south'])           
  end
  
  def test_parse_object_raise()
    assert_raise(ParserError) do
      Parser.parse_object([['verb', 'kill'], ['stop', 'from']])
    end
  end
  
  def test_peek_equal()
    result = Parser.peek([['stop', 'of'], ['verb', 'go']])
    
    assert_equal(result, "stop")
  end
  
  
  def test_match_equal()
    result = Parser.match([['stop', 'of'], ['verb', 'go']], 'stop')
    
    assert_equal(result, ['stop', 'of'])
  end
  
  def test_skip_equal()
    list = [['verb', 'go'], ['stop', 'of'], ['noun', 'bear']]
    Parser.skip(list, 'verb')
    
    assert_equal(list.length, 2)
  end
  
  
  def test_parse_sentence()
    result = Parser.parse_sentence([['stop', 'of'], ['noun', 'bear'], 
                                    ['verb', 'go'], ['direction', 'south'],
                                    ['stop', 'at'], ['verb', 'kill']])
    assert_equal(result.subject, "bear")
    assert_equal(result.verb, "go")
    assert_equal(result.object, "south")
  end
end


