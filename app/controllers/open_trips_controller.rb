class OpenTripsController < ApplicationController
  def index
    @trips = Trip.all
    if params[:q].present?
      @trips = @trips.where('destination ILIKE ? ', "#{params[:q]}%")
    end
    authorize :open_trip
  end
end
