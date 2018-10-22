class AddImagesToProductImages < ActiveRecord::Migration[5.2]
  def change
    add_column :product_images, :images, :string
  end
end
