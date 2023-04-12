Rails.application.routes.draw do
  resource :session, only: %i[new create destroy]
  resources :users, only: %i[new create show]
  resources :courses, only: %i[show]
  root "home#index"
end
