class PostController < ApplicationController

#index
  def index
    @posts = Post.all
  end

#new
  def new
    @posts = Post.new
  end

#create
  def create
    @artist = Post.create!(post_params)

    redirect_to post_path(@posts)
  end

#show
  def show
    @posts = Post.find(params[:id])
  end
