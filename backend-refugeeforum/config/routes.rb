Rails.application.routes.draw do


post 'api/v1/login', to: 'api/v1/auth#login' 
get 'api/v1/auth', to: 'api/v1/auth#persist'
post 'api/v1/create', to: 'api/v1/users#create'


  namespace :api do 
    namespace :v1 do
      resources :comments
      resources :channels
      resources :posts
      resources :users
    end
  end 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
