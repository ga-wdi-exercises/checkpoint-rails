require 'pg'
require 'active_record'

require_relative 'models/post'

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
