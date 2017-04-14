class City < ApplicationRecord

	has_many :store_locations

  validates :latitude, presence: true,
                    numericality: { greater_than_or_equal_to:90, less_than_or_equal_to: -90 }

  validates :longitude, presence: true,
                    numericality: { greater_than_or_equal_to: 180, less_than_or_equal_to: -180 }

  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
  end
end
