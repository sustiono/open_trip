class OpenTripPolicy < Struct.new(:user, :open_trip)
  def index?
    user.is_traveler?
  end
end
