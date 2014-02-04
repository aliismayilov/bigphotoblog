class PhotosController < ApplicationController
  before_filter :authenticate_user!, except: [ :index ]

  def index
    @photos = Photo.all
  end

  def new
  end
end
