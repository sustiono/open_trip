class TripsController < ApplicationController
  def index
    @trips = Schedule.all
    if params[:q].present?
      @trips = @trips.where('destination ILIKE ? ', "#{params[:q]}%")
    end
    authorize :trip
  end
end
