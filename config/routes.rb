Rails.application.routes.draw do
  devise_for :ricks
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :morties
  get '/search', to: 'morties#search'
end
