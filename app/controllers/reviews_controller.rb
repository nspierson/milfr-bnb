class ReviewsController < ApplicationController


  def create
    @mother = Mother.find(params[:mother_id])
    @review = Review.new(params[:review])
  end

  private

  def params_review
    params.require(:review).permit(:rating, :description, :mother_id)
  end
end
