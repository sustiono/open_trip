Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :trips do
    resource  :booking, controller: 'trips/bookings', only: :create
  end

  resources :open_trips, only: :index

  resources :my_trips, only: :index
end
