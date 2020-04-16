Rails.application.routes.draw do

  post '/quizzes/submission', to: "quizzes#submission", as: :quiz_submission

  get '/courses/register', to: "courses#registration", as: :course_registration

  post '/courses/register', to: "courses#register", as: :register

  resources :quizzes, only: [:show, :new, :create, :destroy]
  resources :teachers, only: [:show, :index]
  resources :lectures, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :courses

  get '/dashboard', to: "static#dashboard", as: :dashboard

  get '/login', to: "sessions#new", as: :login
  post '/login', to: "sessions#create"
  get '/access_denied', to: "sessions#access_denied", as: :access_denied
  get '/permission_not_granted', to: "sessions#permission_not_granted", as: :permission_not_granted
  get '/signup', to: "sessions#sign_up", as: :sign_up
  post '/signup', to: "sessions#create_user"
  get '/logout', to: "sessions#logout", as: :logout
end
