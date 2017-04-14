class StoreLocation < ApplicationRecord
	belongs_to :city

	has_many :stores
	has_many :inventories

	validates :pincode,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 6, :maximum => 10 }

	has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
end
