require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    #enables the sessions hash
    enable :sessions 
    #set a session secret as an extra layer of security
    set :session_secret, "secret_squirrel"
  end

  get "/" do
    erb :welcome
  end

end
