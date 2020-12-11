class UsersController < ApplicationController
    
    get '/login' do 
        erb :'/users/login'
    end
    #^this route simply renders the login form

    post "/login" do 
        #find the user 
        user = User.find_by(email: params[:email])
        #authenticate the user
        if user && user.authenticate(params[:password])
        #creating a key value pair in the sessions hash using the users id to actually log them in (but ya gotta enable sesssions first)
            session[:user_id] = user.id
            #^because I already have the session hash and the user object has been authenticated, this adds a key:value pair to it. 
            #I want to keep track of this information because... 
            flash[:message] = "Welcome Back, #{user.username}."
            redirect "/users/#{user.id}" 
        #redirect them to their profile (users show)

            
        else
            #show an error message
            flash[:error] = "Incorrect Email/Password Combination. Try Again Or Go Back To Sign Up."
            redirect '/login'
        end


    end
    #^this route is what's going to collect or 'send' data to the params hash. 
    #the name coencides with the method in the form!

    #SHOW
    get '/users/:id' do 
        #find the user
        @user = User.find_by(id: params[:id])
        
        erb :'/users/show'
    end

    get '/signup' do 
        erb :'/users/signup'
    end

    #NEW
    post '/users' do
        
        @user = User.create(params)
        session[:user_id] = @user.id
        redirect "/users/#{@user.id}"
    end

    #LOGOUT
    get '/logout' do 
        session.clear
        redirect '/'
    end
end

#this class inherits from the App.Controller thereby inheriting from SinatraBase as well
