class AddTripReffToBookedTrips < ActiveRecord::Migration[6.0]
  def change
    add_reference :booked_trips, :trip, null: false, foreign_key: true
  end
end
