class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, null: false, limit: 70
      t.string :alias, null: false, limit: 20
      t.string :rif_ci, null: false, limit: 12
      t.integer :fiscal_address, null: false
      t.integer :comercial_address, null: false
      t.string :phone, limit: 15, null: false
      t.string :email, limit: 40, null: false
      t.string :type_client, limit: 15, null: false
      t.string :active, limit: 14, null: false

      t.timestamps null: false
    end
  end
end


