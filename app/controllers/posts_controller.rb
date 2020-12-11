class PostsController < ApplicationController

    #Read
    get '/posts' do
        @posts = Post.all
        erb :'posts/index'
    end

    
    get '/posts/new' do
        if logged_in?
            erb :'posts/new'
        else
            flash[:error] = "You have to log in to do that, Chef."
            redirect "/"
        end
    end

    # post '/posts' do
    #     @post = Post.new(title: params[:title], image_url: params[:image_url], description: params[:descrpition], user_id: current_user.id)
    #     if @post.save     
    #         flash[:message] = "Post Created Successfully"
    #         redirect "/posts/#{@post.id}"
    #     else 
    #         flash[:error] = "Please Fill Out All Fields"
    #         redirect "/posts/new"
    #     end
    # end

    
    post "/posts" do 
        @post = Post.new(title: params[:title], image_url: params[:image_url], description: params[:description], user_id: current_user.id)
        if @post.save
            flash[:message] = "Post successfully created!"
            redirect "/posts/#{@post.id}"
        else
            flash[:error] = "Error: #{@post.errors.full_messages.to_sentence}"
            redirect 'posts/new'
        end
    end
    
    
    get '/posts/:id' do
        @post = Post.find(params[:id])
        erb :'/posts/show'
    end   
        #I need an instance variable wherever I need to access an id and leverage the information it contains. 
        #it expands its scope so I can use it. 

    
    
    #UPDATE
    #edit button that takes us to the form to get the id
    #render edit form
    #patch method/route
    
    get '/posts/:id/edit' do
        @post = Post.find(params[:id])
        if authorized_to_edit?(@post)
            erb :'/posts/edit'
        else 
            flash[:error] = "That's not your mise en place, Jefe."
            redirect '/posts'
        end
    end

    patch '/posts/:id' do
        @post = Post.find(params[:id])
        @post.update(title: params[:title], image_url: params[:image_url], description: params[:description])
        redirect "/posts/#{@post.id}"
    end

    #DELETE

    delete '/posts/:id' do
        @post = Post.find(params[:id])
        @post.destroy
        redirect '/posts'
    end

end






#Every time a controller is created, you must plug it in in the config file