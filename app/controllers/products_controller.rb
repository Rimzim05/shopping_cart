class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy,:delete_image_attachment]

  def add
  end
  
  def index  
     @products = current_user.products    
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
     @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])    
  end

  def create
    @product = current_user.products.new(product_params)
    @product.image.attach(params[:product][:images])
    if @product.save
      redirect_to  new_product_path, notice: 'Product successfully added.'
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to edit_product_path(@product), notice: "Product updated"
    else
      render 'edit'
    end
  end 

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    respond_to do |format|
    format.html { redirect_to products_url }
    format.json { head :no_content }
    end
  end

  def delete_image_attachment
     # @image = ActiveStorage::Blob.find_signed(params[:id])
     # @image.purge
  #   @product_image = ActiveStorage::Blob.find_signed(params[:id])
  #   @product_image.purge_later
  #   redirect_to new_product_path(@product_image.space)
   end

  private
  def set_product
    # @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:product_name, :category_id, :product_price, :product_description, :quantity)
  end
end