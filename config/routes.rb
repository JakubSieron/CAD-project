Rails.application.routes.draw do
  devise_for :users
  resources :holidays

  root 'holidays#index'
end
