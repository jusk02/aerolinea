class AddDurationToRoute < ActiveRecord::Migration
  def change
    add_column :routes, :duration, :float
  end
end
