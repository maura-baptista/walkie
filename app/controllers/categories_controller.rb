class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @walks = Walk.where(category: params[:id])
  end
end
