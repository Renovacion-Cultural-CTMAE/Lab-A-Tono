Rails.application.routes.draw do
  resources :transformationals
  resources :relationals
  resources :inspirings
  devise_for :users
  root 'home#index'
  get 'sobrenosotros/index'
  get 'renovacionc/index'
  get 'blog/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
