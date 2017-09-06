Rails.application.routes.draw do
  root 'static_pages#index'

  resources :brewpubs, only: [:index]
end
