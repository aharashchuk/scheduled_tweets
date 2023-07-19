
Rails.application.routes.draw do
  get "/about-us", to: "about#index", as: :about
  
  get "/", to: "main#index", as: :root

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  delete "logout", to: "sessions#destroy"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
