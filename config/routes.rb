Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :sensors_group_subscriptions
  resources :sensors_groups
  resources :misurations
  resources :sensors
  get 'registrati', to: 'users#new'
  get 'login' ,to: 'sessions#new'
  post 'login',to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users, except: [:new]

  post 'aggiorna_firmware', to: 'sensors#caricamento_firmware'  
  get 'sensori_pubblici', to: 'sensors#sensori_pubblici'
  get 'mie_misure', to: 'misurations#mie_misure'
  
  get 'aggiorna_firmware',to: 'sensors#aggiorna_firmware'
  post 'receiver/recevie'
  get 'receiver/state'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
