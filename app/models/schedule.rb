# == Schema Information
#
# Table name: schedules
#
#  id                    :bigint           not null, primary key
#  end_time              :datetime
#  is_recurring_schedule :boolean          default(FALSE), not null
#  last_booking_time     :datetime
#  maximum_person        :integer
#  minimum_person        :integer
#  start_time            :datetime
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  user_id               :bigint           not null
#
# Indexes
#
#  index_schedules_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Schedule < ApplicationRecord
  belongs_to  :user

  validates  :start_time, :end_time, :user_id, :maximum_person,
             :minimum_person, :last_booking_time, presence: true
end
