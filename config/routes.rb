Rails.application.routes.draw do
  resources :teachers, only: [:show, :index]
  resources :lectures, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :courses

  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  get '/access_denied', to: "sessions#access_denied", as: :access_denied
  get '/permission_not_granted', to: "sessions#permission_not_granted", as: :permission_not_granted
end
