# == Schema Information
#
# Table name: trips
#
#  id                    :bigint           not null, primary key
#  destination           :text             default(""), not null
#  end_time              :datetime
#  is_recurring_schedule :boolean          default(FALSE), not null
#  last_booking_time     :datetime
#  maximum_person        :integer          default(1), not null
#  meeting_point         :text             default(""), not null
#  minimum_person        :integer          default(1), not null
#  start_time            :datetime
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  user_id               :bigint           not null
#
# Indexes
#
#  index_trips_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Trip < ApplicationRecord
  has_many    :booked_trips

  belongs_to  :user

  validates  :start_time, :end_time, :user_id, :maximum_person,
             :minimum_person, :last_booking_time, :meeting_point,
             :destination, presence: true

  validates  :minimum_person, :maximum_person, numericality: { greater_than: 0 }
end
