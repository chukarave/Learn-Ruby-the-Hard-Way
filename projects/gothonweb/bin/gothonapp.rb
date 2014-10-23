require 'sinatra'
require './lib/gothonweb/map.rb'

class WrongAnswer < Exception
end

set :port, 8080
set :static, true
set :public_folder, "static" 
set :views, "views" 

enable :sessions

get '/' do
 session[:room] = 'START'
 redirect to('/game') 
end

get '/game' do
  room = Map::load_room(session)

  if room
      erb :show_room, :locals => {:room => room, :wrong => false}  
  else
      erb :you_died
  end
end

post '/game' do
  room = Map::load_room(session)
  action = params[:action]

  if room
    begin
      next_room = room.go(action) || room.go("*")
    rescue WrongAnswer => w
      return erb :show_room, :locals => {:room => room, :wrong => true}  
    end
     	
    if next_room
      Map::save_room(session, next_room)
    end

    redirect to('/game')
  else
    erb :you_died
  end
end	
	

