Rails.application.routes.draw do

  root to: 'users#index'

# System show
get "systems/show/:id" => "systems#show"

  # Users
  get "/show" => "users#show"
  get '/users/:uid/locations' => "users#locations"

  # Sessions
  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", as: :signout

  # Locations
  resources :locations
end
