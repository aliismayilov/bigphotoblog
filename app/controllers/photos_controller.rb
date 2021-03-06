class PhotosController < ApplicationController
  before_filter :authenticate_user!, except: [ :index ]

  def index
    @photos = Photo.all
  end

  def new
  end

  def create
    current_user.photos.create upload: URI.parse(URI.unescape(params['url']))
  end
end
