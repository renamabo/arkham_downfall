Rails.application.routes.draw do
  
  root 'welcome#index'

  namespace :api do  
    namespace :v1 do
      
      resources :investigators
      resources :teams
    end
  end
  
  resources :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
