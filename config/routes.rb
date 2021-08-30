Rails.application.routes.draw do
  # get 'allplan/index'
  # get 'allplan/show'
  # post "/index/create" => "plan#create"
  get 'allplans/:id/users' , to:'allplans#user', as: :userid
  post 'allplans/:id/users' , to:'allplans#usercreate'

  resources :allplans do
    resources :days
    resources :users
  end
  # get 'plan/index'
  # post 'plan/new'
  # get 'plan/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
