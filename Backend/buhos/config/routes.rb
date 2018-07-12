Rails.application.routes.draw do
  resources :users
  resources :cities
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
