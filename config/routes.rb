Rails.application.routes.draw do
  resources :public_route_records
  resources :pets
  get 'test', to: 'users#test'
  post 'auth/login', to: 'users#login'
  post 'auth/register', to: 'users#register'
  resources :route_details
  resources :routes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
