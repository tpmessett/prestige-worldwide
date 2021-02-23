class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @yacht = Yacht.find(params[:yacht_id])
  end

  def create
    @yacht = Yacht.find(params[:yacht_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.yacht = @yacht
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :yacht_id, :user_id)
  end
end
