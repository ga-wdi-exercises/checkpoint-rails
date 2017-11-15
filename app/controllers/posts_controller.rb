class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(content: params[:post][:content], is_published: true)
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end
end
