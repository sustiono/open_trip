class AddBookedTripReffToPayment < ActiveRecord::Migration[6.0]
  def change
    add_reference :payments, :booked_trip, null: false, foreign_key: true
  end
end
