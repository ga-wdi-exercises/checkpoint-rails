Rails.application.routes.draw do
  # root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :posts do
  # resources :comments
end

require 'pg'
require 'active_record'

require_relative '../db/connection'
require_relative '../app/models/post'
require_relative '../app/models/comment'

get '/' do
  redirect "/posts"
end

get '/posts' do
  @posts = Post.all
  erb :index
end

get '/posts/new' do
  erb :new
end

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :shoq
end

post '/posts' do
  @post = Post.create(params[:post])
  redirect "/post/#{@post.id}"
end
