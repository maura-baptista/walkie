class LikesController < ApplicationController

  def create
    @like = Like.new
    walk = Walk.find(params[:id])
    @like.walk = walk
    @like.user = current_user
    if check_like(walk, current_user)
       @like.save

    end

  end

  def check_like(walk, user)
    # if this return true, you can like it
    Like.where(user: user, walk: walk).empty?
  end
end

