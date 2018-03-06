class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home , :search ]

  def home
  end


  def search
    @walks = Walk.all.where(name: params[:search])
  end

end
