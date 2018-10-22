class AddAttachmentImagesToProductimgs < ActiveRecord::Migration[5.2]
  def self.up
    change_table :productimgs do |t|
      t.attachment :images
    end
  end

  def self.down
    remove_attachment :productimgs, :images
  end
end
