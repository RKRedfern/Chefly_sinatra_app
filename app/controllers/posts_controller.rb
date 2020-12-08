class PostsController < ApplicationController

    #see all posts 
    get '/posts' do
        @posts = Post.all
        erb :'posts/index'
    end

    #see one post
    get '/posts/:id' do
        @post = Post.find(params[:id])
        erb :"/posts/show"
    end


    #CREATE

    #UPDATE

    #DELETE
    
end

#Every time a controller is created, you must plug it in in the config file