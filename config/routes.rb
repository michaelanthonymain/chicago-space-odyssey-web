Rails.application.routes.draw do

  root to: 'welcome#index'

  # System show
  get "systems/show/:id" => "systems#show"
  get "/systems/all" => 'systems#all'

  # Users
  get "/map" => "users#index"
  get "/show" => "users#show"
  post '/users/mobile' => 'users#mobile', defaults: {:format => :json}

  # Sessions
  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", as: :signout

  # Locations
  get '/locations/:id' => 'locations#system', defaults: {:format => :json}
  get '/locations/:id/collections' => 'locations#collections', defaults: {:format => :json}

  # Collections
  get 'collections/:id' => 'collections#show'
  post '/collections/create' => "collections#create", as: 'collections'
  get '/collections/upload' => 'collections#upload'
end
