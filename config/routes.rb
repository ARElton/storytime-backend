Rails.application.routes.draw do
  resources :storytime_activities
  resources :child_activities
  resources :activities
  resources :child_storytimes
  resources :categories
  resources :storytimes
  resources :children
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
