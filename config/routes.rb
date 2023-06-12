Rails.application.routes.draw do

  # Login and register paths
  post 'api/v1/register', to: 'users#register'
  get 'api/v1/login/:username', to: 'users#login'

  # Car endpoints
  get 'api/v1/cars', to: 'cars#index'
  get 'api/v1/car/:id', to: 'cars#show'
  post 'api/v1/car', to: 'cars#create'
  delete 'api/v1/car/:id', to: 'cars#delete'
  get 'api/v1/reserve/cars/:date', to: 'cars#reserve'
  get 'api/v1/cars/:id', to: 'cars#user_cars' 

  # Reservation endpoints
  post 'api/v1/reservation', to: 'reservations#create'
  get 'api/v1/reservations', to: 'reservations#index'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
