Rails.application.routes.draw do

  get 'authorized/authenticate_device_from_auth_token'

  get 'authorized_controller/authenticate_device_from_auth_token'

  devise_for :users, controllers: {sessions: 'users/sessions', :invitations =>'users/invitations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :houses
  resources :floors
  resources :rooms
  resources :devices

  root "houses#index"

end
