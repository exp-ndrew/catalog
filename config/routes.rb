Rails.application.routes.draw do
  root 'items#index'
  resources :items do
    resources :photos, :except => [:index]
  end
end
