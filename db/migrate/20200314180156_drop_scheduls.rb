class DropScheduls < ActiveRecord::Migration[6.0]
  def change
    drop_table "schedules", force: :cascade do |t|
      t.datetime "start_time"
      t.datetime "end_time"
      t.integer "minimum_person"
      t.integer "maximum_person"
      t.datetime "last_booking_time"
      t.boolean "is_recurring_schedule", default: false, null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.bigint "user_id", null: false
      t.string "meeting_point", default: "", null: false
      t.string "destination", default: "", null: false
      t.index ["user_id"], name: "index_schedules_on_user_id"
    end
  end
end
