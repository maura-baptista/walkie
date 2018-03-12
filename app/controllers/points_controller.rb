class PointsController < ApplicationController

  def form_point
    respond_to do |format|
      format.html
      format.js
    end
  end

  def index

  end

  def new
    @point = Point.new
    @walk = Walk.find(params[:walk_id])
  end

  def create
    @walk = Walk.find(params[:walk_id])
    @point = Point.new(point_params)
    @point.walk = @walk
    byebug
    #@point.user à= current_user
    #authorize @walk
    if @point.save
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
  end

  private
   def point_params
    params.require(:point).permit(:name, :order, :address, :description)
  end

end
