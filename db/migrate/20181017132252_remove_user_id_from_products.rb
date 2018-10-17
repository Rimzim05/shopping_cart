class RemoveUserIdFromProducts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :products, :User_id
  end
end
