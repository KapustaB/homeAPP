Rails.application.routes.draw do
  devise_for :users, controller: {sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :houses
  resources :floors
  resources :rooms

  root "houses#index"

end
