Rails.application.routes.draw do
  get "log_out" => "session#destroy", as: "log_out"
  get "log_in" => "session#create", as: "log_in"
  get "sign_up" => "users#new", as: "sign_up"
  root :to => "users#new"
  resources :users
  resources :session
end
