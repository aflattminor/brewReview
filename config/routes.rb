Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'

  resources :brewpubs, only: [:index]
  resources :users
end
