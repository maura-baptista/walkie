class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :set_walk, only: [:create, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new

  end

  def create
    @review = Review.new(review_params)
    @review.walk = @walk
    @review.user = current_user
    if @review.save
      redirect_to walk_path(@walk)
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

  def set_walk
    @walk = Walk.find(params[:walk_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
