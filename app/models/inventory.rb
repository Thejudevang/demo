class Inventory < ApplicationRecord
	belongs_to :store
	belongs_to :store_location
	belongs_to :product
	
end
