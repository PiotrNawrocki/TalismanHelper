Rails.application.routes.draw do
  root to: 'main#index'
  resources :characters
  resources :games
end
