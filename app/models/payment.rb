# == Schema Information
#
# Table name: payments
#
#  id             :bigint           not null, primary key
#  price          :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  booked_trip_id :bigint           not null
#
# Indexes
#
#  index_payments_on_booked_trip_id  (booked_trip_id)
#
# Foreign Keys
#
#  fk_rails_...  (booked_trip_id => booked_trips.id)
#

class Payment < ApplicationRecord
  belongs_to  :booked_trip
end
