class SchedulePolicy < ApplicationPolicy
  def new?
    user.is_travel_agent?
  end

  def create?
    user.is_travel_agent?
  end

  def edit?
    user.is_travel_agent?
  end

  def update?
    user.is_travel_agent?
  end

  def destroy?
    user.is_travel_agent?
  end
end
