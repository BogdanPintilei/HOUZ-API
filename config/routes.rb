Rails.application.routes.draw do
  root to: 'users#index'

  devise_for :users

  resources :ar_categories
  resources :ar_subcategories
  resources :ar_products

  resources :feed_items
  resources :users

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy] do
        resources :feed_items, only: [:index, :create, :update, :destroy]
      end
      resources :ar_products, only: [:index, :create, :update, :destroy] do
      end
      resources :ar_categories, only: [:index, :create, :update, :destroy] do
      end
      resources :ar_subcategories, only: [:index, :create, :update, :destroy] do
      end
    end
  end
end
