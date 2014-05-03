Rails.application.routes.draw do

  root to: 'users#index'

# System show
get "systems/show/:id" => "systems#show"

  # User Location
  get "/show" => "users#show"

  # Sessions
  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", as: :signout

  # Locations
  resources :locations, :defaults => {:format => "json"}
end
