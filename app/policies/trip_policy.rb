class SchedulePolicy < ApplicationPolicy
  def index?
    user.is_traveler?
  end
end
