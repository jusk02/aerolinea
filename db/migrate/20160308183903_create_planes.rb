class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.integer :numero
      t.string :modelo

      t.timestamps null: false
    end
  end
end
