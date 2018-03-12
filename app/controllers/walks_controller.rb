class WalksController < ApplicationController

  before_action :set_walk, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show]


  def index

    if params[:sort] == 'desc'
      sort = 'desc'
    else
      sort = 'asc'
    end

    @walks = Walk.all.order("duration #{sort}")

  end



  def show
    @reviews = @walk.reviews

    @walk_attachments = @walk.walk_attachments.all

  end

  def new
    @walk = Walk.new
    @point = Point.new
   # @walk_attachment = walk.walk_attachments.build
  end

  def create
    @walk = Walk.new(walk_params)
    # @walk.category
    @walk.category = Category.find(params[:walk][:category])
    @walk.user = current_user

    if @walk.save
      params[:walk_attachments]['photo'].each do |p|
        @walk_attachment = @walk.walk_attachments.create!(photo: p)
      end
      redirect_to new_walk_point_path(@walk)
    else
      render :new
    end
  end

  def edit
    #authorize @walk
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

  def order

  end



  private

  def set_walk
    @walk = Walk.find(params[:id])
    Walk.where(category: params[:category])
    # authorize @walk
  end

   def walk_params
    # params.require(:walk).permit(:name, :category, :location, :duration, :description,  walk_attachments_attributes: [:id, walk_id, :photo])
     params.require(:walk).permit(:name, :location, :duration, :description, walk_attachments_attributes: [:id, :walk_id, :photo])
  end

end


