class AddAttachmentImagesToProductImages < ActiveRecord::Migration[5.2]
  def self.up
    change_table :product_images do |t|
      t.attachment :images
    end
  end

  def self.down
    remove_attachment :product_images, :images
  end
end
