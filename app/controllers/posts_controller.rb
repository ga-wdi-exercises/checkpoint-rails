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

    redirect_to post_path(@post)
  end

  #show
  def show
    @post = Post.find(params[:id])
  end


  # private
  # def artist_params
  #   params.require(:artist).permit(:name, :photo_url, :nationality)
  # end
end
