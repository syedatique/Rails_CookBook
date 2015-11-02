Rails.application.routes.draw do
  
  root 'recipes#index'
  resources :recipes
  resources :categories
  resources :ingredients
  
end
