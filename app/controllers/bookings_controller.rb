class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    booking_date = params.require(:booking).permit(:ends_at, :starts_at)
    @booking = Booking.new(params.permit(:mother_id))
    @mother = Mother.find(params[:mother_id])
    if booking_date["starts_at"].include?('to')
      @booking.starts_at = Date.parse(booking_date["starts_at"].split(" to ")[0])
      @booking.ends_at = Date.parse(booking_date["starts_at"].split(" to ")[1])
      duration_temp = Date.parse(booking_date["starts_at"].split(" to ")[1]) - Date.parse(booking_date["starts_at"].split(" to ")[0])
      duration = duration_temp.to_i + 1
    else
      @booking.starts_at = Date.parse(booking_date["starts_at"])
      @booking.ends_at = Date.parse(booking_date["starts_at"])
      duration = 1
    end
    @booking.price = duration.to_i * @mother.price
    @booking.user = current_user
    @booking.save
    # redirect_to booking_path(@booking)
  end

  def mark_as_accepted
    @booking = Booking.find(params[:booking_id])
    @booking.decision = true
    @booking.accept = true
    @booking.save
    respond_to do |format|
      format.html { render 'pages/dashboard' }
      format.js
    end
  end

  def mark_as_declined
    @booking = Booking.find(params[:booking_id])
    @booking.decision = true
    @booking.accept = false
    @booking.save
    flash[:alert] = "#{@booking.mother.name} sera triste."
    respond_to do |format|
      format.html { render 'pages/dashboard' }
      format.js
    end
  end

  private

  def change_status
  end

  def booking_params
    params.require(:booking).permit(:ends_at, :starts_at)
  end
end
