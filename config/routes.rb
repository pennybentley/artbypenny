Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#index'
  resources :aisles
  namespace :admin do
    resources :aisles, only: [:new, :create, :show] do
      resources :products, only: [:new, :create]
    end
  end
end
