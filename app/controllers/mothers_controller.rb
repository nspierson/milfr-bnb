class MothersController < ApplicationController
  def index
    @mothers = Mother.all?
  end

  def show
    @mother = Mother.find(params[:id])
  end


  private

  def mother_params
    params.require(:mother).permit(:name, :age, :description, :hobbies, :location)
  end
end
