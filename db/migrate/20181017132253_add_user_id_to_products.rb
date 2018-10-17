class AddUserIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :User, foreign_key: true
  end
end
