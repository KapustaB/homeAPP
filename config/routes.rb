Rails.application.routes.draw do


  get 'dashboards/index'

  namespace :api do
    namespace :v1 do
      get 'devices/index'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'devices/show'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'floors/index'
    end
  end

  namespace :api do
    namespace :v1 do
      post 'devices/update'
    end
  end

  namespace :api do
    namespace :v1 do
      post 'floors/show'
    end
  end

  get 'authorized/authenticate_device_from_auth_token'

  get 'authorized_controller/authenticate_device_from_auth_token'

  devise_for :users, controllers: {sessions: 'users/sessions', :invitations =>'users/invitations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :houses
  resources :floors
  resources :rooms
  resources :devices
  resources :dashboards

  root "houses#index"

end
