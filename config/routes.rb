Rails.application.routes.draw do
  root to: redirect('/brewpubs')
  devise_for :users

  resources :users do
    resources :brewpubs
  end

  resources :brewpubs do
    resources :reviews
  end

  resources :reviews

end
