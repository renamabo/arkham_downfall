Rails.application.routes.draw do
  
  root 'welcome#index'

  resources :users, only: [:create, :delete] do
    resources :teams, only: [:create, :new, :edit, :update, :destroy]
    get "/dashboard", to: "users#show"
    post "/dashboard", to: "users#show"
  end
  
  resources :investigators, only: [:index, :show]

  get "/registration", to: "users#new"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

end
