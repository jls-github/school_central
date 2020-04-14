Rails.application.routes.draw do
  resources :teachers, only: [:show, :index]
  resources :lectures, only: [:show]
  resources :courses, only: [:index, :show, :new, :create]

  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
end
