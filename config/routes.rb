Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'
  resources :aisles, only: [:index, :show]
  namespace :admin do
    resources :products do
        resources :prod_pics, only: [:new, :create, :destroy, :edit, :update, :patch]
    end
    resources :aisles, only: [:new, :create, :show, :destroy, :edit, :update, :patch] do
      resources :products, only: [:new, :create, :destroy, :patch] 
    end
  end

end
