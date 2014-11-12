Rails.application.routes.draw do

  get '/' => 'home#hello'
  post '/new_image' => 'home#new_image'
  
end
