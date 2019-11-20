class MothersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show
  before_action :set_user, only: [:new, :create]

  def index
    @mothers = Mother.all
    @search = params["search"]
    if @search.present?
      @location = @search["location"]
      @mothers = Mother.where("location ILIKE ?", @location)
    end
  end

  def new
    @mother = Mother.new
  end

  def show
    @mother = Mother.find(params[:id])
    @booking = Booking.new
    @booking.mother = @mother
    @booking.user = current_user
    @review = Review.new
  end

  def create
    @mother = Mother.new(mother_params)
    @mother.user = @user
    if @mother.save
      flash[:alert] = "Your mother has been created."
      redirect_to mother_path(@mother)
    else
      render :new
    end
  end

  def edit
    @mother = Mother.find(params[:id])
  end

  def update
    @mother = Mother.find(params[:id])
    @mother.photos.purge
    if @mother.update(mother_params)
      flash[:alert] = "Your mother has been updated."
      redirect_to mother_path(@mother)
    else
      render :edit
    end
  end

  def destroy
    @mother = Mother.find(params[:id])
    @mother.destroy
    redirect_to mothers_path
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def mother_params
    params.require(:mother).permit(:name, :location, :age, :user_id, :hobbies, :price, :description, photos: [])
  end
end
