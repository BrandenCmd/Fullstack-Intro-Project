class PhotographersController < ApplicationController
  def index
    @photographers = Photographer.search(params[:search]).page(params[:page]).all
  end

  def show
    @photographer = Photographer.find(params[:id])
    @photos = Photo.where(photographer: @photographer.id).all
  end

  def photograper_params
    params.require(:photographer).permit(:photographer, :search)
  end
end
