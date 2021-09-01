Rails.application.routes.draw do
  # get 'decdates/index'
  # get 'allplan/index'
  # get 'allplan/show'
  # post "/index/create" => "plan#create"
  get 'allplans/:id/users' , to:'allplans#user', as: :userid
  post 'allplans/:id/users' , to:'allplans#usercreate'
  get 'allplans/:id/users/:user_id/decdates' , to:'decdates#index', as: :decdateindex
  post 'allplans/:id/users/:user_id/decdates' , to:'decdates#create'

  root 'allplans#index'
  resources :allplans do
    resources :days
    resources :users do
      resources :decdates , only: [:new, :show, :edit, :update, :destroy]
    end
  end

  # get 'plan/index'
  # post 'plan/new'
  # get 'plan/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
