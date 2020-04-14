Rails.application.routes.draw do
  resources :teachers, only: [:show, :index]
  resources :lectures, only: [:show, :new, :create, :edit, :update, :delete]
  resources :courses

  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
end
