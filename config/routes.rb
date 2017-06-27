Rails.application.routes.draw do
  resources :shifts
  root 'home#show'
  devise_for :users
  resources :users
  namespace :api do
    namespace :v1 do
      resources :schedule
    end
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
