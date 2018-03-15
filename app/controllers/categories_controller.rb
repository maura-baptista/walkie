class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @categories = Category.all
    @walks = Walk.all
    unless params[:sort].nil?
      @walks = Walk.order(duration: params[:sort].to_sym)
    end
  end

  def show
    @category = Category.find(params[:id])
    @walks = Walk.where(category: params[:id])
    unless params[:sort].nil?
      @walks = Walk.where(category: params[:id]).order(duration: params[:sort].to_sym)
   end
  end
end
