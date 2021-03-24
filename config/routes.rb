Rails.application.routes.draw do
  #get '/:id', to: 'users#show'
  resources :groups
  resources :courses
  resources :users, only: [:update, :index, :destroy]
  devise_for :users, :path_prefix => 'd'
  #devise_for :users, :controllers => { :registrations => "users/registrations" }
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
