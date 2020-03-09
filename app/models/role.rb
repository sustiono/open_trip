# == Schema Information
#
# Table name: roles
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ApplicationRecord
  def self.traveler
    find_by_name('traveler')
  end

  def self.travel_agent
    find_by_name('travel_agent')
  end
end
