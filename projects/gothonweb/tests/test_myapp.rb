require './bin/myapp.rb'
require 'test/unit'
require 'rack/test'

class MyAppFormTest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    Sinatra::Application 
  end

  def test_hello_form_post
    post '/hello/', params={:file => Rack::Test::UploadedFile.new("./static/Selection_007.png", "image/png")} 
    assert last_response.ok?
    assert last_response.body.include?('Selection_007.png')
  end
end

# Rack::Test has a special class meant to create a tempfile just for test purposes.

