class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def add
  end
  # GET /products
  # GET /products.json
  def index
    if current_user.is_admin?
       @products = Product.all
    else
        @products = @current_user.products
     # @product = Product.find(params[:id])
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
     @product = Product.find(params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
        @product = current_user.products.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = current_user.products.new(product_params)
      if @product.save
         session[:product_id] = @product.id
         redirect_to  new_product_path, notice: 'Product successfully added.'
      else
        redirect_to new_product_path, notice: "data not inserted"
      end
    end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
   @product = Product.find(params[:id])
          if @product.update(product_params)
          redirect_to edit_product_path(@product), notice: "Category updated"
        else
           render 'edit'
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:product_name, :category_id, :product_price, :product_description, :quantity)
    end
end
