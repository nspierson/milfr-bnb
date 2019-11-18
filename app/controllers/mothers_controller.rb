class MothersController < ApplicationController
  before_action :set_user, only: [:new, :create]

  def new
    @mother = Mother.new
  end

  def create
    @mother = Mother.new(mother_params)
    @mother.user = @user
    if @mother.save
      redirect_to user_mother_path(@mother)
    else
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def mother_params
    params.require(:mother).permit(:name, :location, :age, :user_id, :hobbies, :price, :description, photos: [])
  end

  def show
    @mother = Mother.find(params[:id])
  end


  private

  def mother_params
    params.require(:mother).permit(:name, :age, :description, :hobbies, :location)
  end
end
