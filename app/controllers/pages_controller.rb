class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def show
    @user = User.find(params[:id])
    @user.mothers = Mother.where(user: @user)
  end
end
