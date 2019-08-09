Rails.application.routes.draw do
  root to: 'products#index'
  resources :products do
    resources :most_recent
    resources :reviews
  end
end
