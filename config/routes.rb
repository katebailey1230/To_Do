Rails.application.routes.draw do

  get 'about' => 'welcome#about'

  root 'welcome#index'

    namespace :api, defaults: { format: :json } do

     resources :users do
        resources :lists, only: [:create, :update, :destroy]
     end

      resources :lists, only: [:create, :update, :destroy] do
        resources :items, only: [:create, :update]
      end

      resources :items, only: [:destroy, :update]

    end
  end
