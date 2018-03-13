class UsersController < ApplicationController
  def profile
    @walk = Walk.find(params[:walk_id])
    @walk.likes = @walk
  end
end
