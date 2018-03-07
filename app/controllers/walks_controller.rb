class WalksController < ApplicationController
  before_action :set_walk, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show]





  def index
    @walks = Walk.all
  end

  def show
    @reviews = @walk.reviews
    @walk_attachments = @walk.walk_attachments.all

  end

  def new
    @walk = Walk.new
   @walk_attachment = walk.walk_attachments.build
  end

  def create
    @walk = Walk.new(walk_params)
    @walk.user = current_user
    # #authorize @walk
    # if @walk.save
    #   redirect_to walk_path(@walk)
    # else
    #   render :new
    # end
   respond_to do |format|
     if @walk.save
       params[:walk_attachments]['photo'].each do |a|
          walk_attachment = @walk.walk_attachments.create!(:photo => a)
       end
       format.html { redirect_to @walk, notice: 'Walk was successfully created.' }
     else
       format.html { render action: 'new' }
     end
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
    params.require(:walk).permit(:name, :category, :location, :duration, :description,  walk_attachments_attributes: [:id, walk_id, :photo)
  end
end



