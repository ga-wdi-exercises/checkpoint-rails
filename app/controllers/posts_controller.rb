class PostsController < ApplicationController
# goes in app/controllers/posts_controller.rb
#index
  def index
    @posts = Post.all
  end

#new
  def new
    @post = Post.new
  end

#create
  def create
    @post = Post.create(post_params)

    redirect_to post_path(@post)
  end

#show
  def show
    @post = Post.find(params[:id])
  end
# private
private
    def post_params
      params.require(:post).permit(:content, :is_published)
    end
end
