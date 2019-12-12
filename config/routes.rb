Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'
  resources :aisles, only: [:index, :show]
  namespace :admin do
    resources :aisles, only: [:new, :create, :show] do
      resources :products, only: [:new, :create]
    end
  end
end
