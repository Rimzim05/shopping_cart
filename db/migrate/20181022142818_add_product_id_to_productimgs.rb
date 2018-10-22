class AddProductIdToProductimgs < ActiveRecord::Migration[5.2]
  def change
    add_reference :productimgs, :product, foreign_key: true
  end
end
