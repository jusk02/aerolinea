class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :plane_id
      t.integer :route_id
      t.integer :pilot_id

      t.timestamps null: false
    end
  end
end
