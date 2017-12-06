class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post[:content] = params[:post][:comments]
    if @post.save
      flash[:notice] = 'Post Created'
      redirect_to @post
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    @post[:content] = params[:post][:content]
    @post.save
    redirect_to "/posts/#{@post.id}"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/posts"
  end

  def post_params
    params.require(:post).permit(:content)

  end

end
