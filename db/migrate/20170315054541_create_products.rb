class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
    	t.string :style
    	t.string :title
    	t.integer :brand_id

      t.timestamps
    end
  end
end
