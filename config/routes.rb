Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'photos#index'
  root "players#index"

  resources :photos, only: [:new, :create, :index, :destroy]
  resources :players
  resources :parks
  resources :player_pickup
  resources :pickup

end
