class OpenTripsController < ApplicationController
  def index
    @open_trips = Trip.all
    if params[:q].present?
      @open_trips = @open_trips.where('destination ILIKE ? ', "#{params[:q]}%")
    end
    authorize :open_trip
  end
end
