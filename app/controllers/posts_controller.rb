class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to :back
    else
      @posts = Post.all
      redirect_to :back
    end
  end

  def edit
    @post = find_post_from_url
  end

  def update
    @post = find_post_from_url
    if @post.update(post_params)
      redirect_to @post.area
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
    params.
      require(:post).
      permit(:title, :body, :area_id, :category_id, :image_url).
      merge(area_id: params[:area_id])
  end

  def find_post_from_url
    Post.find(params[:id])
  end
end
