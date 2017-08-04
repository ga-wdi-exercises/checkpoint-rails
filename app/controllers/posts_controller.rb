class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end

  def edit
  @post = Post.find(params[:id])
  redirect_to post_path
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create!(post_params)
  end

  def update
    @post = Post.find(params[:id])
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    end

  private
  def post_params
    params.require(:post).permit(:content, :is_published)
  end
end
