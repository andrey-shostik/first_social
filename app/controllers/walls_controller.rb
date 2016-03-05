class WallsController < ApplicationController
  before_action :set_post, only: [:edit, :show, :update, :destroy]

  def index
    @posts = current_user.walls
  end

  def new
    @post = current_user.walls.new
  end

  def create
    @post = current_user.walls.create(post_params)
    if @post.save
      redirect_to walls_path
    else
      render text: 'ERROR'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to  walls_path
    else
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to walls_path
  end

  private
  def set_post
    @post = current_user.walls.find(params[:id])
  end

  def post_params
    params.require(:wall).permit(:text)
  end
end
