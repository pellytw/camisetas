class CreateVentas < ActiveRecord::Migration
  def change
    create_table :ventas do |t|
      t.integer :cliente_id
      t.date :fecha

      t.timestamps
    end
  end
end
