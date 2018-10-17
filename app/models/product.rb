class Product < ApplicationRecord
	validates :product_name, :product_price, :product_description, :quantity, presence: true
	validates :product_price, :quantity, numericality: true

	belongs_to :category
	belongs_to :user
end
# rails g migration AddUser_IdToProducts User:references