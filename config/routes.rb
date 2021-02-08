Rails.application.routes.draw do
  # resources :storytime_activities
  # resources :child_activities
  resources :activities, only: [:index, :show]
  resources :child_storytimes
  # resources :categories
  resources :storytimes, only: [:index, :show]
  resources :children, only: [:index, :show, :create]
  resources :users, only: [:index, :show]

  get '/autologin', to: 'users#autologin'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
