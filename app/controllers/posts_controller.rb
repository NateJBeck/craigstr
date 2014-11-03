class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to posts_path
    else
      @posts = Post.all
      render :index
    end
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
