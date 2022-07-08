class UsersController < ApplicationController
  def index
  @users = Userr.all
end
  def show; end
end
