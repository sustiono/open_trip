class TripPolicy < Struct.new(:user, :trip)
  def index?
    user.is_traveler?
  end
end
