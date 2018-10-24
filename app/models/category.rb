class Category < ApplicationRecord
  has_many  :products
  validates :category_name, presence: true
  has_many_attached :image
end


  