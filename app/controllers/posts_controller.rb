class PostsController < ApplicationController

  def index
  @posts = Post.all
  end

  def new
  @post = Post.new
  end

  def create
  @post = Post.create!(post_params)

  redirect_to post_path
  end

  def show
  @post = Post.find(params[:id])

  end
end
