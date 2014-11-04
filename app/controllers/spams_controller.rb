class SpamsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.increment(:spam)
    post.save
    redirect_to posts_path
  end
end
