class RemoveProductImagesFromProductImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :product_images, :product_images, :string
  end
end
