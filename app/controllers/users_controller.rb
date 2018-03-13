class UsersController < ApplicationController
  def profile
    @walks_liked = current_user.walks_liked.map { |like| like.walk}
    @walks_created = current_user.walks_created
    @walks_previous = current_user.participated
  end
end
