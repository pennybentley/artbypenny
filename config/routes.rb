Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#index'
  namespace :admin do
    resources :aisles, only: [:new, :create, :show]
  end
end
