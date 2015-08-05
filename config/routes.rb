Rails.application.routes.draw do
  devise_for :users
  resources :holidays do
  	resources :answers
  end

  root 'holidays#index'
end
