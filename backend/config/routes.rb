Rails.application.routes.draw do
  get 'todopages/index'
  # get 'decdates/index'
  # get 'allplan/index'
  # get 'allplan/show'
  # post "/index/create" => "plan#create"
  get 'allplans/:id/users' , to:'allplans#user', as: :userid
  post 'allplans/:id/users' , to:'allplans#usercreate'
  get 'allplans/:id/users/:user_id/decdates' , to:'decdates#index', as: :decdateindex
  post 'allplans/:id/users/:user_id/decdates' , to:'decdates#create'
  get 'allplans/:id/sum' , to:'allplans#sum', as: :allplansum
  get 'allplans/:id/todopages' , to:'todopages#index', as: :todopage
  post 'allplans/:id/todopages' , to:'todopages#create'



  root 'allplans#index'
  resources :allplans do
    resources :days
    resources :todopages
    resources :users do
      resources :decdates , only: [:new, :show, :edit, :update, :destroy]
    end
  end

  # get 'plan/index'
  # post 'plan/new'
  # get 'plan/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
