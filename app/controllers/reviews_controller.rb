class ReviewsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new(params[:review].permit(:review, :rating))
    if @review.save
      flash[:notice] = 'Review added'
      redirect_to @restaurant
    else
      flash[:notice] = 'Sorry, there was a problem submiting your review!'
    end
  end

end
