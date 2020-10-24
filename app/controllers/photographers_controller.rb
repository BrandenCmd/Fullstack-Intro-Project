class PhotographersController < ApplicationController
  def index
    @photographers = Photographer.page(params[:page]).all
  end

  def show
    @photographer = Photographer.find(params[:id])
    @photos = Photo.where(photographer: @photographer.id).all
  end
end
