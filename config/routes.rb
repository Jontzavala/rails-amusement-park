Rails.application.routes.draw do
  root 'static_pages#home'
  resources :users, only: [:new, :create, :show]
  resources :attractions
  get '/signin' => "sessions#new"
  post '/signin' => "sessions#create"
  delete '/session' => "sessions#destroy"
  post '/rides' => "rides#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
