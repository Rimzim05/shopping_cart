class ProductimgsController < ApplicationController

	 def index
    @images = Productimgs.order('created_at')
  end

	def new
		@images = Productimgs.new
	end
	 
	def create
		@images = Productimgs.new(images_params)
    if @images.save
      flash[:success] = "The photo was added!"
      redirect_to root_path
    else
      render 'new'
    end
	end

  def images_params
  params.require(:images).permit(:images, :product_id)
  end


end
end
