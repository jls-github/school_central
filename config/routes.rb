Rails.application.routes.draw do
  resources :teachers, only: [:show, :index]
  resources :lectures, only: [:show]
  resources :courses, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
