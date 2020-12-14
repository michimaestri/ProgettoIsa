Rails.application.routes.draw do
  resources :sensors_group_subscriptions
  resources :sensors_groups
  resources :misuration_subscriptions
  resources :misurations
  resources :sensors
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
