require "sinatra"

set :port, 8080
set :static, true
set :public_folder, "static"
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
  tempfile = params[:file][:tempfile]
  filename = params[:file][:filename]
  FileUtils.copy(tempfile.path, "./static/#{filename}")
  
  erb :index2, :locals => {'greeting' => greeting, 
                          'name' => name, 
                           'filename' => filename, 
                           'tempfile' => tempfile}
end

# the browser gets the file path from the user under the symbol :file and sends a POST request to the server. 
# Sinatra, using the ruby code creates a temporary file for it called :tempfile. 
# the file is then copied to the public folder under the same file name (e.g. static/foo.jpg).
# when the line <img src=/"<% filename>"> appears in the handler, the browser sends a GET req to the server with the URL appended with the file name 
# (e.g.http://localhost:8080/Selection_007.png) 
# Sinatra first looks for a route with that name, and if none is found, looks at what was defined as the public_folder for the file name and looks there. 
# Eventually the file is sent to the browser and displayed where rc=/"<% filename>"> appears in the HTML. 
