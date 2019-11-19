class MothersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_user, only: [:new, :create]

  def index
    @mothers = Mother.all
  end

  def new
    @mother = Mother.new
  end

  def show
    @mother = Mother.find(params[:id])
  end


  def create
    @mother = Mother.new(mother_params)
    @mother.user = @user
    if @mother.save
      redirect_to mother_path(@mother)
    else
      render :new
    end
  end

  def show
    @mother = Mother.find(params[:id])
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def mother_params
    params.require(:mother).permit(:name, :location, :age, :user_id, :hobbies, :price, :description, photos: [])
  end
end
