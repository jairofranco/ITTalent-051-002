Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :budgets
  resources :agendas
  resources :public_servants
  resources :cities
  resources :events
  root :to => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
