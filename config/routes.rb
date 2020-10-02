Rails.application.routes.draw do
  resources :pokes, only: [:show, :new, :create]
  resources :trainers, only: [:index, :show, :new, :create]
  post "/trainers/:id", to: "trainers#party", as: "party"
  resources :elements, only: [:show]
  resources :species, only: [:show]
  resources :areas, only: [:show, :index]
  get "/", to: "application#home", as: "home"

  get "/login", to: "trainers#login", as: "login"
  post "/login", to: "trainers#process_login"
  get "/logout", to: "trainers#logout", as: "logout"
  post "/caught/:id", to: "pokes#catch", as: "caught"

  get "species/:id/catch", to: "species#catch", as: "catch"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
