require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
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
    

    def 
      authorized_to_edit?(post)
      post.user == current_user
    end
  end

end

# Alton Brown - https://ca-times.brightspotcdn.com/dims4/default/daae540/2147483647/strip/true/crop/1365x2048+0+0/resize/840x1260!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F0f%2Fe8%2F747281e24ae3f6318dcf54b38e3e%2Fla-ar-cutthroat-kitchens-alton-brown-branches-001

# Alton Brown's Food - https://food.fnr.sndimg.com/content/dam/images/food/fullset/2010/4/13/0/GC_alton-brown-french-toast_s4x3.jpg.rend.hgtvcom.826.620.suffix/1382539328476.jpeg