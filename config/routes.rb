Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "static_pages/home", to: "static_pages#home"
  get "static_pages/help", to: "static_pages#help"
  get "static_pages/about", to: "static_pages#about"
  get "static_pages/contact", to: "static_pages#contact"
  get "static_pages/signup", to: "users#new"
  get "static_pages/signin", to: "static_pages#signin"

  get "users/new", to: "users#new"

end
