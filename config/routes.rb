Rails.application.routes.draw do
  #Users
  post "/users" => "users#create"

  #Sessions
  post "/sessions" => "sessions#create"

  #Wishlists
  get "/wishlists" => "wishlists#index"
  get "/wishlists/:id" => "wishlists#show"
  post "/wishlists" => "wishlists#create"
  delete "/wishlists/:id" => "wishlists#destroy"
end
