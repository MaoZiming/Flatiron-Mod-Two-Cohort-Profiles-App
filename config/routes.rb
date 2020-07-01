Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get '/show', to: "users#show"
  
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"  

  # get "/createprofile", to: ""
  
  resources :profiles

end
