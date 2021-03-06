# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_17_150256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booked_trips", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "trip_id", null: false
    t.bigint "user_id", null: false
    t.bigint "payment_status_id", null: false
    t.index ["payment_status_id"], name: "index_booked_trips_on_payment_status_id"
    t.index ["trip_id"], name: "index_booked_trips_on_trip_id"
    t.index ["user_id"], name: "index_booked_trips_on_user_id"
  end

  create_table "payment_statuses", force: :cascade do |t|
    t.string "name", default: "Pending", null: false
    t.string "status_code", default: "1", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "booked_trip_id", null: false
    t.index ["booked_trip_id"], name: "index_payments_on_booked_trip_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
  end

  create_table "trips", force: :cascade do |t|
    t.text "destination", default: "", null: false
    t.text "meeting_point", default: "", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "minimum_person", default: 1, null: false
    t.integer "maximum_person", default: 1, null: false
    t.datetime "last_booking_time"
    t.boolean "is_recurring_schedule", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", default: "", null: false
    t.string "address", default: "", null: false
    t.string "phone_number", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "role_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "booked_trips", "payment_statuses"
  add_foreign_key "booked_trips", "trips"
  add_foreign_key "booked_trips", "users"
  add_foreign_key "payments", "booked_trips"
  add_foreign_key "trips", "users"
  add_foreign_key "users", "roles"
end
