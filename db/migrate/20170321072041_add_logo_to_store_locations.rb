class AddLogoToStoreLocations < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :store_locations, :logo
  end
end
