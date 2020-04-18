class OpenTripsController < ApplicationController
  def index
    @open_trips = Trip.all
    if params[:q].present?
      @open_trips = @open_trips.where('destination ILIKE ? ', "%#{params[:q]}%")
    end
    authorize :open_trip

    respond_to do |format|
      format.html
      format.json { render json: @open_trips }
    end
  end
end
