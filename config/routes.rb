Rails.application.routes.draw do
  resources :ar_categories
  resources :ar_subcategories
  devise_for :users

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
    end
  end
end
