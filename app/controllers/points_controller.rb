class PointsController < ApplicationController


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
    params.require(:point).permit(:name, :order, :address, :description, :photo)
  end

end
