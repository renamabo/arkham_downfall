Rails.application.routes.draw do
  
  root 'welcome#index'
  
  #API-Related routes
  namespace :api do
    namespace :v1 do
      resources :investigators, only: [:index, :show]
    end
  end

  #Routes via resources (mostly)
  resources :users, only: [:create, :delete] do
    resources :teams, only: [:create, :new, :edit, :update, :destroy]
    get "/dashboard", to: "users#show"
    post "/dashboard", to: "users#show"
  end
  
  #Routes via handrolling for Auth
  get "/registration", to: "users#new"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

end
