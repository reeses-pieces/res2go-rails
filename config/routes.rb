Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  resources :users, :only => [:show]

  resources :reservoirs, :only => [:index]

  resources :stats, :only => [:show, :edit, :update, :delete]
end
