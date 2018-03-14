class UserWalksController < ApplicationController

  def create

    @walk = Walk.find(params[:walk_id])
    @user_walk = UserWalk.new
    @user_walk.user = current_user
    @user_walk.walk = @walk
    if @user_walk.save
     redirect_to walk_path(@walk), notice: "Enjoy your walk!"
    end
  end
end




