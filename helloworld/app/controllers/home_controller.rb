class HomeController < ApplicationController
  
  def hello
    @name = params[:name] || "Greg"
    @photos = Photo.all
  end
  
  def new_image
    poster = params[:poster] || 'Greg'
    photo = Photo.new(img_url: params[:img_url], poster_name: poster)
    photo.save
    redirect_to '/'
  end
  
end
