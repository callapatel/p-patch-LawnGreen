class PostsController < ApplicationController
  def index
  @posts =  Post.all
  end

  def new
    @post = Post.new(post_params)
    @post.user_id = session[:user_id]
    @post.save
  end

  def destroy
    #delete
  end

  


private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
