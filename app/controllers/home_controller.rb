class HomeController < ApplicationController
  before_action :restrict_this_page

  def index
    @trips = Trip.all
  end

  private
  def restrict_this_page
    if current_user&.is_travel_agent?
      return redirect_to trips_path
    elsif current_user&.is_traveler?
      return redirect_to open_trips_path
    end
  end
end
