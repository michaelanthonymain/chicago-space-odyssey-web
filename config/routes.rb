Rails.application.routes.draw do

  root to: 'users#index'

  # System show
  get "systems/show/:id" => "systems#show"
  get "/systems/all" => 'systems#all'

  # Users
  get "/show" => "users#show"
  get '/users/:uid/locations' => "users#locations"

  # Sessions
  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", as: :signout

  # Locations
  resources :locations

  # Collections
  get 'collections/:id' => 'collections#show'
  post '/collections/create' => "collections#create", as: 'collections'
  get '/collections/upload' => 'collections#upload'
end
