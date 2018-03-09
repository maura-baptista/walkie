class UsersWalksController < ApplicationController

  def new
    @walk = Walk.new
  end


  def create
    @walk = Walk.find(params[:walk_id])
    @user_walk = UserWalk.new(params[:walk_id])
    @user_walk.user = current_user
    @user_walk.walk = @walk
    if @user_walk.save
     redirect to walk_path, notice: "Enjoy your walk!"
    end
  end
end




