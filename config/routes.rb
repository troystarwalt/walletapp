Rails.application.routes.draw do

  get 'sessions/new'

  get    'login'   => 'sessions#new'
  
  post   'login'   => 'sessions#create'

  get 'logout' => 'sessions#destroy'

  resources :users
  resources :cards
  resources :user_cards

  # You can have the root of your site routed with "root"
  root 'welcome#index'


end
