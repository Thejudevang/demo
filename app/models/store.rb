class Store < ApplicationRecord
	belongs_to :store_location
	belongs_to :brand
	has_many :inventories

	validates :pincode,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 6, :maximum => 10 }

	has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

  validates :phoneno,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
end
