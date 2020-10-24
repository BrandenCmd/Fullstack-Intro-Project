class HomeController < ApplicationController
  def index
    @photo = Photo.includes(:photographer).first
  end
end
