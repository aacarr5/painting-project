Rails.application.routes.draw do
  devise_for :administrators
  root to: 'home#index'

  resources :categories, :paintings, only: [:index, :new, :create, :delete]
  resources :categorizations, only: [:create,:delete]
  
end
