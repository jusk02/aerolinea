class AddDateTimeToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :date_time, :datetime
  end
end
