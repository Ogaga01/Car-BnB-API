Rails.application.routes.draw do
  get 'api/v1/login/:username', to: 'users#login'
  post 'api/v1/register/:username/:name', to: 'users#register'
  
  get 'api/v1/cars', to: 'cars#index'
  get 'api/v1/car/:id', to: 'cars#show'
  get 'api/v1/reserve/cars/:date', to: 'cars#reserve'
  get 'api/v1/cars/:user_id', to: 'cars#user_cars'
  post 'api/v1/car/:user_id/:name/:model/:description/:price/:image', to: 'cars#create'
  delete 'api/v1/car/:id', to: 'cars#delete'
  

  post 'api/v1/reservation/:user_id/:car_id/:city/:date', to: 'reservations#create'
  get 'api/v1/reservations/:user_id', to: 'reservations#index'

end
