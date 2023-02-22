Rails.application.routes.draw do
  #Users
  post "/users" => "users#create"

  #Sessions
  post "/sessions" => "sessions#create"

  #Wishlists
  get "/wishlist" => "wishlists#index"
  get "/wishlist/:id" => "wishlists#show"
  post "/wishlist" => "wishlists#create"
  delete "/wishlist/:id" => "wishlists#destroy"
  
  #Libraries
  get "/library" => "libraries#index"
  get "/library/:id" => "libraries#show"
  post "/library" => "libraries#create"
  delete "/library/:id" => "libraries#destroy"

end
