Rails.application.routes.draw do
  devise_for :administrators
  root to: 'home#index'
end
