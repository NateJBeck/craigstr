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

  def edit
    @post = find_post_from_url
  end

  def update
    @post = find_post_from_url
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    post = find_post_from_url
    post.destroy

    redirect_to :back
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def find_post_from_url
    Post.find(params[:id])
  end
end
