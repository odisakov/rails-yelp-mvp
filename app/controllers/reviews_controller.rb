class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end

end
