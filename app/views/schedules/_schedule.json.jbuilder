json.extract! schedule, :id, :start_time, :end_time, :minimum_person, :maximum_person, :last_booking_time, :is_recurring_schedule, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
