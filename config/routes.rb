Rails.application.routes.draw do
  get "/flavors", to: "home#flavors", as: "flavors"
  get "/prices", to: "home#prices", as: "prices"
  get "/about", to: "home#about", as: "about"

  root 'home#show'
  devise_for :users, only: [:registrations, :sessions]

  authenticate :user do
    resources :simple_calendar
    resources :users
    resources :inventories  
    resources :photos, only: [:index, :new, :create]
    resources :products
    resources :shifts
    resources :schedules
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
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
