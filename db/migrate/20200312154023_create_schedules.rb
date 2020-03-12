class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :minimum_person
      t.integer :maximum_person
      t.datetime :last_booking_time
      t.boolean :is_recurring_schedule, null: false, default: false

      t.timestamps
    end
  end
end
