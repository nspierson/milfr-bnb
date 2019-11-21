class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user

  def show
    @user = User.find(params[:id])
  end
end
