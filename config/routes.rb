Rails.application.routes.draw do

  root to: 'morties#index'
  
  devise_for :ricks
  
  resources :profiles, only: [:show, :edit, :update]
  get 'profile/show'  

  resources :morties do
    resources :exchanges, only: [:show, :new, :create]
  end  
  get '/mymorties', to: 'mymorties#index'
  
end
