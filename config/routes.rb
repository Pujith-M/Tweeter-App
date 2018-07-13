Rails.application.routes.draw do
  root "tweeets#index"
  devise_for :users, :controllers => { registrations: 'users/registrations', omniauth_callbacks: 'users/omniauth' }
  resources :tweeets
  
  resources :users do
    member do
      get :following, :followers
    end
  end
  
  resources :relationships,       only: [:create, :destroy]
  
  get '/profile/:id', to: 'users/profile#show'

end
