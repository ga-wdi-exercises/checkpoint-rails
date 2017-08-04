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
@post = Post.create!(passing_info)
redirect_to post_path(@post)
end




private


def passing_info
params.require(:post).permit(:content, :is_published)
end



end
