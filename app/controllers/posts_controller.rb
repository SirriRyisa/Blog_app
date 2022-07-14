class PostsController < ApplicationController
  def index
    @posts = Postt.all
  end

  def show; end
end
