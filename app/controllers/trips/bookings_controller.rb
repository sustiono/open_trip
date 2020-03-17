class Trips::BookingsController < ApplicationController
  def create
    booked_trip = BookedTrip.new(booking_params)
    if booked_trip.save!
      redirect_to root_path
    else
      render 'open_trips/index'
    end
  end

  private

  def booking_params
    params[:booked_trip] = {
      trip_id: params[:trip_id]
    }
    params.require(:booked_trip).permit(:trip_id).merge(
      user_id: current_user.id,
      payment_status_id: PaymentStatus.pending.id
    )
  end
end
