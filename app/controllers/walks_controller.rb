class WalksController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def delete
  end

  def edit
  end

  def update
  end

  private

  def set_walk
    @walk = Walk.find(params[:id])
    authorize @walk
  end

   def walk_params
    params.require(:walk).permit(:name, :category, :location, :duration, :description, )
  end
end
