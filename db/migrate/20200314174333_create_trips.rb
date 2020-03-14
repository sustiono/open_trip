class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.text :destination, null: false, default: ''
      t.text :meeting_point, null: false, default: ''
      t.datetime :start_time
      t.datetime :end_time
      t.integer :minimum_person, null: false, default: 1
      t.integer :maximum_person, null: false, default: 1
      t.datetime :last_booking_time
      t.boolean :is_recurring_schedule, null: false, default: false

      t.timestamps
    end
  end
end
