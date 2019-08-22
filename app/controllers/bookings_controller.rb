class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id].to_i)
  end

  def create
    @booking = Booking.new
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
    redirect_to bookings_path
  end

  private

  def booking_params
    params.permit(:announce_id, :user_id)
  end
end
