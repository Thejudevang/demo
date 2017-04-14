class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
    	t.float :bprice
    	t.float :sprice
    	t.string :offer
    	t.integer :sku
    	t.integer :store_id
    	t.integer :store_location_id
    	t.integer :product_id

      t.timestamps
    end
  end
end
