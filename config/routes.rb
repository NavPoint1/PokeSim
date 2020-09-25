Rails.application.routes.draw do
  resources :pokes, only: [:show, :new, :create]
  resources :trainers, only: [:index, :show, :new, :create]
  resources :elements, only: [:show]
  resources :species, only: [:show]
  resources :areas, only: [:show, :index]
  get "/", to: "application#home", as: "home"

  get "species/:id/catch", to: "species#catch", as: "catch"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
