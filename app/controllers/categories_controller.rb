class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @walks = Walk.all
    @walks = Walk.order(duration: params[:sort].to_sym)

  end

  def show
    @category = Category.find(params[:id])
    @walks = Walk.where(category: params[:id]).order(duration: params[:sort].to_sym)
  end
end
