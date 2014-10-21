require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "static" # make static files accessible from browser
set :views, "views" # erb templates (z.B. index, index1)

get '/' do
  return 'Hello world'
end

get '/hello/' do
  greeting = params[:greeting] || "Hi There" 
  greeting1 = params[:greeting1] || "Hi There"  # : 
  erb :index, :locals => {'greeting' => greeting, 'greeting1' => greeting1} # key name 
  
end

get '/win/' do # get = route
  #thing = params[:prize] || "Bla" 
  erb :index1, :locals => {
  'stuff' => params[:prize] || "Bla"}
end

get %r{/winmore/(\w+)} do  # regexp instead of string makes the URL nicer
   erb :index1, :locals => {
  'stuff' => params[:captures].first} # params is an array so method .first catches the first element
end


get %r{/bla/(\w*)} do # with (\w*), if nothing is written after the /bla/ the template would still be loaded
  erb :index1, :locals => {
  'stuff' => params[:captures].first}
end

=begin

1.  The handler get '/hello/' do specifies what happens when your browser goes to /hello/.

2.  In the handler we are getting the ?greeting=Hi part by using the params Hashmap. Sinatra builds params from the request, and we want to make the greeting from it. Notice the || "Hi There" at the end? This is a way of saying, "Either use what's in params or use 'Hi There'."

3.  Next the /hello/ handler uses the erb function (remember Ruby lets you not use parenthesis on function calls) to "render" the :index view. The :locals = {'greeting' => greeting} part says, "Also give this greet view the local variables greeting with this setting."

4.  When I say :greet view I mean the file views/index.erb you created above. Sinatra knows this too and loads it for you, passing in the greeting variable as you requested.

5.  The views/index.erb file is called a template, and it has holes in it that is dynamically created. The part that reads <%= greeting %> does that, so Sinatra runs this, takes the resulting HTML, and sends it to your browser.


=end

# erb is a Ruby gem. sinatra has the erb method. the symbol :index is just a way of referring to a file called index.erb. it could actually have any name. 

# :locals is always called that way and is used to refer to the Hashmap of variables that will be later assigned with whatever is specified in the URL

# params (also always named params)  

get '/time/' do
  variable = "<%= Time.now %>" # instead of having a template, get the parameter directly in the code
  erb variable
end

