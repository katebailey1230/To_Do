Rails.application.routes.draw do
  get 'welcome/about'

  root 'welcome#index'

  resources :users, only: [:new, :create]

  namespace :api, defaults: { format: :json } do

     resources :users do
       resources :lists, only: [:create, :update, :destroy]
     end
   end
end
