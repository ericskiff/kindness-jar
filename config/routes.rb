Rails.application.routes.draw do
  resources :kindnesses
  resources :friends
  root to: 'visitors#index'
end
