Rails.application.routes.draw do
  # Rails routing
  # devise_for :users
  # root to: redirect('/brewpubs')
  #
  # resources :users
  #
  # resources :brewpubs do
  #   resources :reviews, except: [:index]
  # end

  # React routing
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users
  resources :brewpubs, only: [:new, :create, :edit, :update, :destroy]

  namespace :api do
    namespace :v1 do
      resources :brewpubs, only: [:index, :show] do
        resources :reviews
      end
    end
  end

  root to: redirect('/brewpubs')
  resources :brewpubs, only: [:index, :show, :edit, :update], to: 'static_pages#index'

end
