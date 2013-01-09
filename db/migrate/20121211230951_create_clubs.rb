class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
