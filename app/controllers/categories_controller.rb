class CategoriesController < ApplicationController
  
  def index
    @category = Category.all
  end

  def new
    @category = Category.new
  end

  def add
  end
      
  def create
    @category = Category.new(category_params)
    @category.image.attach(params[:category][:images])
      if @category.save
        redirect_to  new_category_path
      else
        redirect_to new_category_path, :notice => "Something went wrong!"
      end
  end        

  def update
    @category = Category.find(params[:id])
      if @category.update(category_params)
        redirect_to edit_category_path(@category), notice: "Category updated"
      else
         render 'edit'
      end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def show
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path, notice: "Category succesfully deleted" 
  end

  private
  def category_params
    params.require(:category).permit(:category_name)
  end

end
