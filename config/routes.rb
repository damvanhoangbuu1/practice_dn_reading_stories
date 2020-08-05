Rails.application.routes.draw do
  root "static_page#home"

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :users
  resources :categories, only: [:show]
  resources :stories
  resources :chapters
end
