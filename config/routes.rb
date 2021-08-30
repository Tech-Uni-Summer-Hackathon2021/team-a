Rails.application.routes.draw do
  # get 'allplan/index'
  # get 'allplan/show'
  # post "/index/create" => "plan#create"
  root 'allplans#index'
  resources :allplans do
    resources :days
  end
  # get 'plan/index'
  # post 'plan/new'
  # get 'plan/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
