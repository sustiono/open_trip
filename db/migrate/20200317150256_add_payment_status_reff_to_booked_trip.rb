class AddPaymentStatusReffToBookedTrip < ActiveRecord::Migration[6.0]
  def change
    add_reference :booked_trips, :payment_status, null: false, foreign_key: true
  end
end
