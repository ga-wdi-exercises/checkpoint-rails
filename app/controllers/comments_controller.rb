class Comment < ApplicationController

def index
  @comments = Comment.all
end

end
