class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.announce = Announce.find(params[:announce_id])
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.status = "Validated"
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:booking_id])
    @booking.status = "Declined"
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.permit(:announce_id, :user_id)
  end
end

