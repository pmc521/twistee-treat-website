Rails.application.routes.draw do
  resources :inventories
  resources :products
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
  namespace :api do
    namespace :v1 do
      resources :comments
    end
  end
  resources :inventories do
      get 'delete_all'
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
