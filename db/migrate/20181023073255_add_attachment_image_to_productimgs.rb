class AddAttachmentImageToProductimgs < ActiveRecord::Migration[5.2]
  def self.up
    change_table :productimgs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :productimgs, :image
  end
end
