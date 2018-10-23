class Productimg < ApplicationRecord

  # has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :image, :default_url => "/images/:style/missing.png", validate_media_type: false
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :image, attachment_presence: true

	# has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 #   validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

   # validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes
   # validates_attachment :image,
   # content_type: ["image/jpeg", "image/gif", "image/png"]
   # do_not_validate_attachment_file_type :image

#    Paperclip.options[:content_type_mappings] = {
#   foo: %w(text/plain)
# }
  
    belongs_to :product

end