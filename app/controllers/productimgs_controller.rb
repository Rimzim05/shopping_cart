class ProductimgsController < ApplicationController
 # before_action :set_productiming, only: [:show, :edit, :update, :destroy]
  def add
  end

  def index
      @image = Productimg.all
   end

  def new
	  @image = Productimg.new
  end
	 
  def create
    
     product = Product.find(params[:product_id])
     #@image = Productimg.new(productimg_params)
     @image = product.productimgs.build(productimg_params)
     #@image = product.productimgs.build(params[:image])
    
  	if @image.save
  		redirect_to  new_product_productimg_path(product.id), notice: 'image successfully added.'
  	else
      render 'new'
  		# redirect_to new_product_productimg_path(product.id), notice: 'image not added .'
  	end
    # @image = Productimg.create(productimg_params)
  end

  private
  def productimg_params
    params.require(:productimg).permit(:image)
  end
end
