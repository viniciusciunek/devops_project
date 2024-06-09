Rails.application.routes.draw do
  resources :reservations
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  get "reservations", to: "reservations#index" 

  # root "visitor#index"

  authenticated :user do
    root to: "reservations#index", as: :authenticated_root
  end

  unauthenticated do
    root to: "visitor#index", as: :unauthenticated_root
  end
end