Rails.application.routes.draw do
  resources :products
  resources :shifts
  resources :schedules
  root 'home#show'
  devise_for :users
  resources :users
  resources :simple_calendar
  namespace :api do
    namespace :v1 do
      resources :schedules
    end
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
