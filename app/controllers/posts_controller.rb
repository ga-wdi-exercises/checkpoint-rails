class PostsController < ApplicationController
  # index
  def index
    @posts = Post.all
  end

  # new
  def new
    @post = Post.new
  end

  # create
  def create
    @post = Post.create!(post_params)
    redirect_to post_path(@post), notice: "Post was successfully saved."
  end

  #show
  def show
    @post = Post.find(params[:id])
  end

  # edit
  def edit
    @post = Post.find(params[:id])
  end


  # update
  def update
    @post = post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post), notice: "Post was successfully updated."
  end

  # destroy
  def destroy
    @post = post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:content, :is_published)
  end
end
