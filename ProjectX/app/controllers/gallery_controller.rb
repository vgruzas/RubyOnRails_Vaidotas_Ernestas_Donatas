class GalleryController < ApplicationController

  def index
    @images = Dir.glob("app/assets/images/gallery/*")
  end

end
