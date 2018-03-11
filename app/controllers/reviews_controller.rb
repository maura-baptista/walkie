class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    # @booking.venue = @venue
    @walk = Walk.find(params[:walk_id])
    @review = Review.new(review_params)
    authorize @review
    if @review.save
      redirect_to walk_path
    else
      render :new
    end
  end


  def edit
  end

  def update
  end

  def destroy
    @review.destroy
    redirect_to @walk
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
