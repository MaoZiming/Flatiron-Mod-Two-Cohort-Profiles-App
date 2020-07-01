Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/', to: "sessions#new"
  
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get '/show', to: "users#show"
  
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"  
  
  # resources :profiles
  get '/profiles/new', to: "profiles#new"
  post "/profiles/new", to: "profiles#create"
  get "/profiles/show", to: "profiles#show"
  get "/profiles/edit", to: "profiles#edit"
  post "/profiles/edit", to: "profiles#update"
  get '/profiles/:id', to: "profiles#search"

  get '/cohorts', to: "cohorts#index"
  get "/cohorts/:id", to: "cohorts#show"

end
