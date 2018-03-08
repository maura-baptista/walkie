class WalksController < ApplicationController

  Mapbox.access_token = 'pk.eyJ1IjoiZnJhbmNpc2NvYmFycmV0byIsImEiOiJjamVoMWRjMjMwbWh6MnFuczF6dGd6bmFoIn0.S5h45dvXuYQ3xoN-d504KA'

  before_action :set_walk, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show]

  def index

    @walks = Walk.all


    #@walks = policy_scope(Walk).order(created_at: :desc)

  end

  def show
    @reviews = @walk.reviews

  end

  def new
    @walk = Walk.new
    #authorize @walk
  end

  def create
    @walk = Walk.new(walk_params)
    @walk.user = current_user
    #authorize @walk
    if @walk.save
      redirect_to walk_path(@walk)
    else
      render :new
    end
  end

  def edit
    authorize @walk
  end


  def update
    @walk.update(walk_params)
    if @walk.save
      redirect_to walk_path(@walk)
    else
      render :edit
    end
  end



  def destroy
    @walk.destroy
    redirect_to walks_path
  end



  private

  def set_walk
    @walk = Walk.find(params[:id])
    Walk.where(category: params[:category])
    # authorize @walk
  end

   def walk_params
    params.require(:walk).permit(:name, :category, :location, :duration, :description, :photo)
  end







end
