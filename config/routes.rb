Rails.application.routes.draw do
  get "/" => "home#top"
  get "about" => "home#about"
  get "flow" => "home#flow"

  get "menus/new" => "menus#new"
  post "menus/create" => "menus#create"
  get 'menus/index' => "menus#index"
  get "menus/:id" => "menus#show"
  get "menus/:id/edit" => "menus#edit"
  post "menus/:id/update" => "menus#update"
  post "menus/:id/destroy" => "menus#destroy"

  get "signup" => "users#new"
  post "users/create" => "users#create"
  get 'users//index' => "users#index"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  post "users/:id/destroy" => "users#destroy"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
