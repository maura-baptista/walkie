class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home , :search ]

  def home
  end


  def search
    @walks = Walk.all

    if params[:category]
      @walks = @walks.send(params[:category])
    end


  end

end
