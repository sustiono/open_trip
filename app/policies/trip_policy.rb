class TripPolicy < Struct.new(:user, :trip)
  def index?
    user.is_travel_agent?
  end

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
