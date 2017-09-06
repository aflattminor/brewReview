Rails.application.routes.draw do
  devise_for :users
  root to: redirect('/brewpubs')

  resources :brewpubs do
    resources :reviews
  end
  resources :users
end
