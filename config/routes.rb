Rails.application.routes.draw do
  resources :skateboards
  resources :appointments
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "skateboards#index"
end
