class DropTableProductimgs < ActiveRecord::Migration[5.2]
  def change
  	drop_table :productimgs
  end
end
