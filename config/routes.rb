Rails.application.routes.draw do
  resources :holidays

  root 'holidays#index'
end
