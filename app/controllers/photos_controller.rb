class PhotosController < ApplicationController
  def index
    @photos = Photo.includes(:photographer).page(params[:page]).all
  end

  def show
    @photo = Photo.find(params[:id])
    @photographer = Photographer.find(@photo.photographer.id)
  end
end
