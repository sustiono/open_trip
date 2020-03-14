class AddDestinationToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :destination, :string, null: false, default: ''
  end
end
