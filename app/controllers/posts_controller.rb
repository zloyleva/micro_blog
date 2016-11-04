class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
  end

  def create
    post = Post.new(post_params)
    post.save
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end
