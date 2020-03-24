class MyTripsController < ApplicationController
  before_action :authenticate_user!

  def index
    @my_trips = current_user.booked_trips
  end
end
