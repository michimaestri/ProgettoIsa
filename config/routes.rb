Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :sensors_group_subscriptions
  resources :sensors_groups
  resources :misuration_subscriptions
  resources :misurations
  resources :sensors
  get 'registrati', to: 'users#new'
  resources :users, except: [:new]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
