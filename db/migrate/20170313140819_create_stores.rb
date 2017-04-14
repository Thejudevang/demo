class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
    	t.string :name
    	t.string :city
    	t.string :state
    	t.string :country
    	t.integer :pincode
    	t.integer :phoneno
    	t.string :merchant
    	t.integer :store_location_id
    	t.integer :brand_id

      t.timestamps
    end
  end
end
