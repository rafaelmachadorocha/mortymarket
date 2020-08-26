Rails.application.routes.draw do
  get 'profile/show'
  devise_for :ricks
  root to: 'morties#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :morties
  resources :profiles, only: [:show, :edit, :update]
  get '/search', to: 'morties#search'
end
