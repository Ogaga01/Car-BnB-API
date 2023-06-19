Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get 'users/index'
  get 'api/v1/login/:username', to: 'users#login'
  post 'api/v1/register', to: 'users#register'
  
  get 'api/v1/cars', to: 'cars#index'
  get 'api/v1/car/:id', to: 'cars#show'
  get 'api/v1/reserve/cars/:date', to: 'cars#reserve'
  get 'api/v1/cars/:id', to: 'cars#user_cars'
  post 'api/v1/car', to: 'cars#create'
  delete 'api/v1/car/:id', to: 'cars#delete'
  
  get 'api/v1/reservations', to: 'reservations#index'
  get 'api/v1/reservations/:id', to: 'reservations#show'
  post 'api/v1/reservation', to: 'reservations#create'

end
