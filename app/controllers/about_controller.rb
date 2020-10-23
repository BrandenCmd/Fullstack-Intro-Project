class AboutController < ApplicationController
  def index
    @photo = Photo.first
    @photographer = Photographer.first
  end
end
