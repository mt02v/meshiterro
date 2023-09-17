class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end
  
  def create
    @post_image = Post_image.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def index
    @post_images = Post_image.all
  end

  def show
    @post_images = Image.find(:id)
  end
  
  def destroy
    post_image = Post_images.find(params[:id]
    post_image.destroy
    redirect_to '/post_images'
  end
  
  private
  
  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end





end