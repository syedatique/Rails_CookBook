Rails.application.routes.draw do
  
  resources :quantities
  root 'recipes#index'
  resources :recipes
  resources :categories
  resources :ingredients
  
end