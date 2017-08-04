class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end

  def edit
  @post = Post.find(params[:id])
  redirect_to edit.post_path(@post)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)
    redirect_to posts_path
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path(@post)
    end

  private
  def post_params
    params.require(:post).permit(:content, :is_published)
  end
end
