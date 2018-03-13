class UsersController < ApplicationController
  def profile
    @walks = current_user.likes.map { |like| like.walk }
    @walk = Walk.where(user: current_user)
    @walks = current_user.walks


  end
end
