class CreateTalles < ActiveRecord::Migration
  def change
    create_table :talles do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
