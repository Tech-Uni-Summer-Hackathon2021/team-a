Rails.application.routes.draw do
  root 'plan#index'
  get 'plan/index'
  get 'plan/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :example
end
