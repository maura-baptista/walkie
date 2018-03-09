class PointsController < ApplicationController
  def index

  end

  def new
    @point = Point.new
  end

  def create
    @point = Point.new(walk_params)
    @point.user = current_user
    #authorize @walk
    if @walk.save
      redirect_to walk_path(@walk)
    else
      render :new
    end
    # respond_to do |format|
    #  if @walk.save
    #    params[:walk_attachments]['photo'].each do |a|
    #       walk_attachment = @walk.walk_attachments.create!(:photo => a)
    #    end
    #    format.html { redirect_to @walk, notice: 'Walk was successfully created.' }
    #  else
    #    format.html { render action: 'new' }
    # end
  end




  def edit
  end

  def update
  end

  def destroy
  end
end
