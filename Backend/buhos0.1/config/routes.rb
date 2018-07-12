Rails.application.routes.draw do
  get 'wellcome/index'
root :to => "wellcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
