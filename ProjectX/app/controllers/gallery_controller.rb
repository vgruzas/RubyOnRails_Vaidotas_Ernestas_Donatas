class GalleryController < ApplicationController

  def index
    @products = Product.all
    @images = Dir.glob("app/assets/images/gallery/*")
  end

end
