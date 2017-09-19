Rails.application.routes.draw do
  
  resources :comments
  resources :images
  resources :users

  post  'auth/', to: 'auths#create'
  get   'current_user/', to: 'auths#show'
  get 'house_images/', to: 'images#index'
  post 'house_images/', to: 'images#create'
  
      
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
