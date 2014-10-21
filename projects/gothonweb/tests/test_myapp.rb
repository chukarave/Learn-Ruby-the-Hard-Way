require './bin/myapp.rb'
require 'test/unit'
require 'rack/test'

class MyAppFormTest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    Sinatra::Application 
  end

  def test_hello_form_post
    post '/hello/', params={:file => './static/Selection_007.png'}
    assert last_response.ok?
    #assert_equal '/Selection_007.png', last_response.body 
    assert last_response.body.include?('Selection_007.png')

  end
end



