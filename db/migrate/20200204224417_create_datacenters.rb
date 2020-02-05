class CreateDatacenters < ActiveRecord::Migration[5.1]
  def change
    create_table :datacenters do |t|
      t.string :code, null: false
      t.integer :servers_available
      t.integer :servers_capacity
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
