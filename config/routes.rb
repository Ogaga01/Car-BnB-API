Rails.application.routes.draw do

  get 'user/login', to: 'users#login'
  get 'user/register', to: 'users#register'
  resources :users, only: %i[new] do
    get 'cars/reserve', to: 'cars#reserve'
    get 'cars', to: 'cars#user_cars'
    resources :cars, except: %i[edit new] do
      resources :reservations, only: %i[index create]
    end
  end
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
