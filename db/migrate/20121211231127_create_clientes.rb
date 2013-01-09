class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.integer :dni
      t.string :email

      t.timestamps
    end
  end
end
