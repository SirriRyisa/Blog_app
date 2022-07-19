class PostsController < ApplicationController
  def index
    @user =  User.find(params[:user_id])
    @posts = Post.where(user_id: @user.id)
  end

  def create
    post = params[:post]
    user = current_user

    new_post = Post.new(post.permit(:title, :text))
    new_post.comments_counter = 0
    new_post.likes_counter = 0
    new_post.user = user

    if new_post.save
      flash[:notice] = 'Successfully created a new post.'
      redirect_to user_post_url(user, new_post)
    else
      flash[:error] = 'Failed to create new post!'
      @post = new_post
      render :new
    end
  end

  def new
    @post = Post.new
    render :new
  end

  def show
    @post = Post.includes(:user, comments: [:user]).find(params[:id])
  end
end
