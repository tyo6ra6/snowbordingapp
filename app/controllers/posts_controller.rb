class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new :edit, :destroy]
  before_action :set_post, only: [:edit, :show, :update, :destroy]

  def index
    @posts = Post.all
    @posts = Post.order('created_at DESC')

  end 

  def new
    @post = Post.new
  end

  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    
  end

  def edit 
  end

  def update

    if @post.update(post_params)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
  
    private

    def post_params
      params.require(:post).permit(:ski_resort_name, :area_id, :prefecture_id, :image, :weather_id, :thoughts ).merge(user_id: current_user.id)
    end
  
    def set_post
      @post = Post.find(params[:id])
    end


end



   
