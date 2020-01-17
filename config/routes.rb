Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'
  resources :aisles, only: [:index, :show]
  namespace :admin do
    resources :products, only: [] do
        resources :prod_pics, only: [:new, :create]
        resources :prod_details, only: [:new, :create] 
    end
    resources :aisles, only: [:new, :create, :show] do
      resources :products, only: [:new, :create] 
    end
  end

end
