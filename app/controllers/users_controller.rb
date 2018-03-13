class UsersController < ApplicationController
  def profile
    @walks = current_user.likes.map { |like| like.walk }
    @walk = Walk.where(user: current_user)
    @walks_previous = current_user.walks
  end
end
