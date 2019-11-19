class ReviewsController < ApplicationController
 def create
    @mother = Mother.find(params[:mother_id])
    @review = Review.new(params_review)
    @review.mother = @mother
    @review.user = current_user
    @review.save
    redirect_to mother_path(@mother)
  end

  private

  def params_review
    params.require(:review).permit(:rating, :description, :mother_id)
  end
end
