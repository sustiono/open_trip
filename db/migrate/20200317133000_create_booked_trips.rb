class CreateBookedTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :booked_trips do |t|

      t.timestamps
    end
  end
end
