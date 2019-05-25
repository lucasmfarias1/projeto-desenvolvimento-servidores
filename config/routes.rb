Rails.application.routes.draw do
  devise_for :users
  resources :albums
  resources :bandas
  root to: 'home#index'
end
