class Productimg < ApplicationRecord
	 has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

has_attached_file :image,
                  styles: { thumb: ["64x64#", :jpg] }

    validates_attachment :image,
     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  belong_to :Products
end
