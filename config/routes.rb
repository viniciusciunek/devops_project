Rails.application.routes.draw do
  resources :reservations

  get "up" => "rails/health#show", as: :rails_health_check

  get "reservations", to: "reservations#index" 

  root "reservations#index"
end