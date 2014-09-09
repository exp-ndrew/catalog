Rails.application.routes.draw do
  root 'items#index'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :items do
    resources :photos, :except => [:index]
  end
  resources :users
  resources :sessions
end
