class RemovePaymentIdFromBookedTrips < ActiveRecord::Migration[6.0]
  def change

    remove_column :booked_trips, :payment_id, :bigint
  end
end
