class YachtsController < ApplicationController
  def index
    @yachts = Yacht.all

    if params[:price].present?
      price = params[:price].to_i - 1
      range = Yacht::PRICE_RANGES[price]
      @yachts = @yachts.where("cost_per_night between #{range[0]} and #{range[1]}")
    end

    if params[:destination].present?
      @yachts = @yachts.search_yacht(params[:destination])
    end

    @markers = @yachts.geocoded.map do |yacht|
      {
        lat: yacht.latitude,
        lng: yacht.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { yacht: yacht })
      }
    end
  end

  def show
    @yacht = Yacht.find(params[:id])
    @booking = Booking.new
    @markers = [{ lat: @yacht.latitude, lng: @yacht.longitude }]
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @yacht.user = current_user
    if @yacht.save
      redirect_to yacht_path(@yacht)
    else
      render :new
    end
  end

  def destroy
    @yacht = Yacht.find(params[:id])
    @yacht.destroy
    redirect_to users_yachts_path
  end

  private

  def yacht_params
    params.require(:yacht).permit(:yacht_name, :cost_per_night, :yacht_location, :description, :photo, :Address)
  end
end
