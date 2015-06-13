class Client < ActiveRecord::Base
  validates :name, :alias, :rif_ci, :fiscal_address, :phone, :email, :type_client, :active, presence: true
  validates :alias, :email, :rif_ci, uniqueness: true
  validates :fiscal_address, :comercial_address, numericality: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :name, length: { maximum: 70 }
  validates :alias, length: { maximum: 20 }
  validates :rif_ci, length: { maximum: 12 }
  validates :phone, length: { maximum: 15 }
  validates :email, length: { maximum: 40 }
  validates :type_client, length: { maximum: 15 }, inclusion: { in: %w(Estudiante Sponsor Empresa) }
  validates :active, length: { maximum: 14 }, inclusion: { in: %w(Habilitado Deshabilitado) }
end