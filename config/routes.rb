Rails.application.routes.draw do
  # Rails routing
  # devise_for :users
  # root to: redirect('/brewpubs')
  #
  # resources :users

  # resources :brewpubs do
  #   resources :reviews, except: [:index]
  # end

  # React routing
  devise_for :users
  root to: redirect('/brewpubs')
  resources :brewpubs, to: 'static_pages#index'

  resources :users

  namespace :api do
    namespace :v1 do
      resources :brewpubs do
        resources :reviews
      end

      resources :reviews, only: [:create]
    end
  end

end
