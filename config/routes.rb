Rails.application.routes.draw do
  resources :shifts
  resources :schedules
  root 'home#show'
  devise_for :users
  resources :users
  resources :simple_calendar
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
