require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    #enables the sessions hash
    enable :sessions 
    #set a session secret as an extra layer of security
    set :session_secret, "secret_squirrel"
    register Sinatra::Flash
  end

  get "/" do
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
      erb :welcome
    end
  end

  helpers do

    def logged_in?
      !!current_user
    end

    def current_user 
      User.find_by(id: session[:user_id])
    end
    #^keeps track of the logged in user

    def 
      authorized_to_edit?(post)
      post.user == current_user
    end
  end

  

end
