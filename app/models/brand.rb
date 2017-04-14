class Brand < ApplicationRecord
	has_many :stores
	has_many :products

	has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
  end
end
