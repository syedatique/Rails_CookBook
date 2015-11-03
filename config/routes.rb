Rails.application.routes.draw do
  
  devise_for :users
  resources :quantities
  root to: 'recipes#index'
  resources :recipes
  resources :categories
  resources :ingredients
  
end