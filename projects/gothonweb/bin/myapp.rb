require "sinatra"

set :port, 8080
set :static, true
set :publich_folder, "static"
set :views, "views"

get '/' do
  return 'Hello world'
end

get '/hello/' do
  erb :hello_form   # handler which returns the :hello_form form
end


post '/hello/' do   # post indicates that a form will be recieved. 
  greeting = params[:greeting] || "Hi There"
  name = params[:name] || "Nobody"
  tempfile = params['file'][:tempfile]
  filename = params['upload'][:filename]
  File.copy(tempfile.path, "./static/#{filename}")
  
  erb :index2, :locals => {'greeting' => greeting, 
                          'name' => name, 
                           'filename' => filename, 
                           'tempfile' => tempfile}
end


