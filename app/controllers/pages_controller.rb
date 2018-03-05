class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home , :show , :search ]

  def home
  end
end
