class UsersController < ApplicationController
  def index
    @users = User.all
    # respond_to do |format|
    #   format.html
    #   # format.json { render json: @user }
    # end
  end

  def show
    @users = User.find(params[:id])
    @recent_posts = @users.recent_3_posts
    respond_to do |format|
      format.html
      # format.json { render json: @user }
    end
  end
end
