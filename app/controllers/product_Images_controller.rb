class ProductImagesController < ApplicationController
  
  def new
  end
   
  def create
  @images = Product_Images.create(product_images_params)
  end

  def product_images_params
  params.require(:product_image).permit(:images, :product_id)
  end
  
end
