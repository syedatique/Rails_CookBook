Rails.application.routes.draw do
  
  root 'recipes#index'
  resources :recipes
  resources :catagories
  resources :ingredients
  
end
