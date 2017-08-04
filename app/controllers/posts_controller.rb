class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post =Post.find(params[:id])
  end

  def edit
    @post =Post.find(params[:id])
  end

  def create
    @post = Post.create!(params[:content])

    # redirect_to post(@post)
  end
  def delete
    @post =Post.find(params[:id])
  end
end
