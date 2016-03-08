class RenameTicketNumberToTripIdInPassengers < ActiveRecord::Migration
  def change
  	rename_column :passengers, :tiket_number, :trip_id
  end
end
