Rails.application.routes.draw do
  devise_for :users

  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }

  get "up" => "rails/health#show", as: :rails_health_check

  root "visitor#index"
end