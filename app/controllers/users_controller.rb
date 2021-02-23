class UsersController < ApplicationController
  before_action :set_user

  def yachts
    @yachts = @user.yachts
  end

  def bookings
    @bookings = @user.bookings
  end

  private

  def set_user
    @user = User.find(params[:user])
  end
end
