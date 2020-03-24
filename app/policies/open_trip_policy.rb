class OpenTripPolicy < Struct.new(:user, :open_trip)
  def index?
    user.nil? || user.is_traveler?
  end
end
