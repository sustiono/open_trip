# == Schema Information
#
# Table name: booked_trips
#
#  id                :bigint           not null, primary key
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  payment_status_id :bigint           not null
#  trip_id           :bigint           not null
#  user_id           :bigint           not null
#
# Indexes
#
#  index_booked_trips_on_payment_status_id  (payment_status_id)
#  index_booked_trips_on_trip_id            (trip_id)
#  index_booked_trips_on_user_id            (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (payment_status_id => payment_statuses.id)
#  fk_rails_...  (trip_id => trips.id)
#  fk_rails_...  (user_id => users.id)
#

class BookedTrip < ApplicationRecord
  has_many    :payments

  belongs_to  :trip
  belongs_to  :payment_status
  belongs_to  :traveler, class_name: 'User', foreign_key: :user_id
end
