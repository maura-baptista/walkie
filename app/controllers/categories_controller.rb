class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @walks = Walk.all
  end

  def show
    @category = Category.find(params[:id])
    @walks = Walk.where(category: params[:id])
  end
end
