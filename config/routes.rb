Rails.application.routes.draw do

  root to: 'users#index'

  # User Location
  get "/show" => "users#show"

  # Sessions
  get "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", as: :signout
end
