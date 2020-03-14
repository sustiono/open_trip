class AddMeetingPointToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :meeting_point, :string, null: false, default: ''
  end
end
