class ReviewsController < ApplicationController
  def new
    @review = Review.new
    # raise
    # @
  end

  def create
    # raise
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
    # raise
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
