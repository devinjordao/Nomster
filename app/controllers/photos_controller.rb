class PhotosController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @photo = Photo.all
  end

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))
  end

  def show
    @place = Place.find(params[:place_id])
    @place.photos.all
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end
