Rails.application.routes.draw do
  root to: 'users#index'

  devise_for :users
  resources :feed_items
  resources :users

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy] do
        resources :feed_items, only: [:index, :create, :update, :destroy]
      end
    end
  end
end
