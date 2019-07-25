class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end


    # @review = Review.new(review_params)
    # # we need `restaurant_id` to asssociate review with corresponding restaurant
    # @review.restaurant = Restaurant.find(params[:restaurant_id])
    # @review.save
