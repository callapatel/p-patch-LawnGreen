class PostsController < ApplicationController

  def index
    @posts =  Post.all

  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = current_user.posts.create(post_params)
    # raise params.inspect
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def destroy
    #delete
  end




private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
