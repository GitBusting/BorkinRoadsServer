Rails.application.routes.draw do
  post 'auth/register', to: 'users#register'
  resources :route_details
  resources :routes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
