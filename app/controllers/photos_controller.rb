class PhotosController < ApplicationController
  # GET /photos
  def index
    @photos = Photo.all
  end
end
