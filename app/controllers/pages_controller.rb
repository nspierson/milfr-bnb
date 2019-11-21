class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @bookings = Booking.where(user: @user)
    @mothers = Mother.where(user: @user)
    @requests = Booking.where(mother: @mothers)
  end

  def show
    @user = User.find(params[:id])
  end
end
