class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         validates :first_name, :last_name, :email, :phonenum, :houseno, :shippingaddress,
                   :houseno, :city, :state, :pincode, presence: true
          validates :email, uniqueness: true          
         validates :first_name, :last_name, length: { minimum: 2 }
         validates :phonenum, length: { is: 10 }
         validates :phonenum, :pincode, numericality: true

         
end
