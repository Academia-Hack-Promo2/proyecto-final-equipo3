class Supplier < ActiveRecord::Base
	#has_many :invoice

	validates :name, presence: true, length: { maximum: 70 }
	validates :alias, uniqueness: true, presence: true, length: { maximum: 20 }
	validates :rif, uniqueness: true, presence: true, length: { maximum: 12 }
	validates :fiscal_address, presence: true
	validates :comercial_address, presence: true
	validates :phone, presence: true, length: { maximum: 15 }
	validates :email, uniqueness: true, presence: true, length: { maximum: 40 }
end
