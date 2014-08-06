Rails.application.routes.draw do
  root "puppies#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  get "my_puppy_dashboard" => "my_puppy_dashboards#index", as: :my_puppy_dashboard
  post "my_puppy_dashboard/add/:id" => "my_puppy_dashboards#add", as: :add_puppy
  resources :puppies do
    resources :play_dates
  end
end
