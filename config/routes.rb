Rails.application.routes.draw do
  
  root 'welcome#index'

  resources :investigators do
    resources :teams
  end
  
  resources :users, only: [:create, :delete] do
    get "/dashboard", to: "users#show"
    post "/dashboard", to: "users#show"
  end
  
  get "/registration", to: "users#new"
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
