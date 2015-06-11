class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, limit: 70
      t.string :alias, limit: 20
      t.string :rif_ci, limit: 12
      t.integer :fiscal_address
      t.integer :comercial_address
      t.string :phone, limit: 15
      t.string :email, limit: 40
      t.string :type_client, limit: 15
      t.string :active, limit: 14

      t.timestamps null: false
    end
  end
end
