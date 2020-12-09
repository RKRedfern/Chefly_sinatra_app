class PostsController < ApplicationController

    #Read
    get '/posts' do
        @posts = Post.all
        erb :'posts/index'
    end

    
    get '/posts/new' do
        erb :'posts/new'
    end

    post '/posts' do
        @post = Post.create(title: params[:title], image_url: params[:image_url], 
            description: params[:descrpition], user_id: current_user.id)
            
            redirect "/posts/#{@post.id}"
    end
    
    
    get '/posts/:id' do
        
        @post = Post.find(params[:id])
        erb :'/posts/show'
        #I need an instance variable wherever I need to access an id and leverage the information it contains. 
        #it expands its scope so I can use it. 

    end
    
end
    
    #UPDATE

    #DELETE
    


#Every time a controller is created, you must plug it in in the config file