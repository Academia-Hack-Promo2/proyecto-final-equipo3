class Supplier < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 70 }
	validates :alias, uniqueness: true, presence: true, length: { maximum: 20 }
	validates :rif, uniqueness: true, presence: true, length: { maximum: 12 }
	validates :fiscal_address, presence: true
	validates :comercial_address, presence: true
	validates :phone, presence: true, length: { maximum: 15 }
  	validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  	validates :active, length: { maximum: 14 }, inclusion: { in: %w(Habilitado Deshabilitado) }
end
