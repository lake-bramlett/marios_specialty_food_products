Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :products do
    resources :most_recent
    resources :reviews
  end
end
