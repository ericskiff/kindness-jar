Rails.application.routes.draw do
  mount Lockup::Engine, at: '/lockup'
  resources :kindnesses
  resources :friends
  root to: 'visitors#index'
end
