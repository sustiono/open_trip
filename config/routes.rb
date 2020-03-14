Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :trips

  resources :open_trips, only: :index
end
