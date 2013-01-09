class CreateTitularidads < ActiveRecord::Migration
  def change
    create_table :titularidads do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
