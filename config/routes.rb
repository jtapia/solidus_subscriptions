SolidusSubscriptions::Engine.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :line_items, only: [:update, :destroy]
      resources :subscriptions, only: [] do
        member do
          get :cancel
        end
      end
    end
  end
end

Spree::Core::Engine.routes.draw do
  mount SolidusSubscriptions::Engine, at: '/subscriptions'
end
