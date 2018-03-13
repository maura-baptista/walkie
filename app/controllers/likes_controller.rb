class LikesController < ApplicationController
  before_action :set_walk, only: [:create, :destroy]
  before_action :set_like, only: [:destroy]

  def create
    @walk.likes.create(user: current_user)
    @like = @walk.likes.last
    respond_to do |format|
     format.js
    end
  end

  def destroy
    @like.delete
    @like = nil
    respond_to do |format|
     format.js
    end
  end

  private

  def set_like
    @like = Like.find(params[:id])
  end

  def set_walk
    @walk = Walk.find(params[:walk_id])
  end
end

