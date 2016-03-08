class AddLandingTimeToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :landing_time, :datetime
  end
end
