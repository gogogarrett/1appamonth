Appamonth::Application.routes.draw do

  # AUTH
  resources :sessions
  get "/password", to: redirect("/password/reset")
  get '/password/reset', to: 'password#new', as: 'password_reset'
  post '/password/reset', to: 'password#create'
  get '/password/:token', to: 'password#edit', as: 'edit_password'
  patch '/password/:token', to: 'password#update', as: 'update_password'
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"

  # Pages
  get "/dashboard", to: "dashboard#show"
  root to: "welcome#index"
  resource :my_profile, only: [:show, :edit, :update], controller: 'my_profile'
  resources :profiles, only: [:index, :show]
  resources :apps

  # to be removed
  post "/email/create", to: "welcome#create", as: :create_email
end
