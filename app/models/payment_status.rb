# == Schema Information
#
# Table name: payment_statuses
#
#  id          :bigint           not null, primary key
#  name        :string           default("Pending"), not null
#  status_code :string           default("1"), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PaymentStatus < ApplicationRecord
  def self.pending
    find_by_status_code('1')
  end

  def self.down_payment
    find_by_status_code('2')
  end

  def self.success
    find_by_status_code('3')
  end

  def self.canceled
    find_by_status_code('4')
  end
end
