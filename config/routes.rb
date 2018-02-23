Rails.application.routes.draw do

  root to: 'application#home'

  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  post "/signout", to: "sessions#destroy"

  resources :users, only: [:index, :new, :create, :show, :edit]
  resources :attractions, only: [:index, :new, :create, :show, :edit, :update]
  post "/rides/new", to: "rides#new"


end
