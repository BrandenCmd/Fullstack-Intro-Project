class PhotosController < ApplicationController
  def index
    @photos = Photo.includes(:photographer).all
  end

  def show
    @photo = Photo.find(params[:id])
  end
end
