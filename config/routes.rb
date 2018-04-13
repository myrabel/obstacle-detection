Rails.application.routes.draw do
  devise_for :users
  resources :smartagrics
  resources :detected_obstacles
  root 'smartagrics#index'
end
