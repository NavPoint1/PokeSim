Rails.application.routes.draw do
  resources :elements, only: [:show]
  resources :species, only: [:show]
  resources :areas, only: [:show, :index]

  get "species/:id/catch", to: "species#catch", as: "catch"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
