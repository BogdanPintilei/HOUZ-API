# frozen_string_literal: true

Rails.application.routes.draw do
  apipie
    resources :apipie
    resources :ar_products
    resources :ar_subcategories
    root to: 'users#index'

    devise_for :users

    resources :ar_categories

    resources :feed_items
    resources :users

    namespace :api do
        namespace :v1 do
            resources :users, only: %i[index create update destroy] do
                resources :feed_items, only: %i[index create update destroy]
            end

            resources :ar_categories, only: %i[index create update destroy] do
                resources :ar_subcategories, only: %i[index create update destroy] do
                    resources :ar_products, only: %i[index create update destroy]
                end
            end
        end
    end
end
