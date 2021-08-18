Rails.application.routes.draw do
  root 'plan#index'
  # get 'plan/index'
  # # post 'plan/new'
  # get 'plan/show'
  resources :plan
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
