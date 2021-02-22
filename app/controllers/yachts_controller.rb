class YachtsController < ApplicationController
  def index
    @yachts = Yacht.all
  end

  def show
    @yacht = Yacht.find(params[:id])
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    if @yacht.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def yacht_params
    params.require(:yacht).permit(:yacht_name, :cost_per_night, :yacht_location, :description)
  end
end
