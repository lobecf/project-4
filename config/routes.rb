Rails.application.routes.draw do
  resources :user_stories
  resources :stories
  resource :users, only: [:show, :index]

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  post "/signup", to: "users#create"
  get "/me", to: "users#show"

  post "/preset-story", to: "user_stories#create"

end
