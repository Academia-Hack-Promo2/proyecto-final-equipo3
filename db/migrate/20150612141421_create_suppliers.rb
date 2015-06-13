class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name, null: false, limit: 70
      t.string :alias,mnull: false, limit: 20
      t.string :rif, null: false, limit: 12
      t.integer :fiscal_address, null: false
      t.integer :comercial_address, null: false
      t.string :phone, null: false, limit: 15
      t.string :email, null: false, limit: 40
      t.string :active, null: false, limit: 14

      t.timestamps null: false
    end
  end
end
