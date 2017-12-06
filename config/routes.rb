Rails.application.routes.draw do


  get 'sessions/new'

  resources :users
  get 'cart/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'about/show'

  get 'passengers/create'

  get 'passengers/show'

  get 'flight/index'

  get 'flight/show'

  ######### Custom routes ##########

  resource :sessions

  root to: 'flight#index', as: 'flights'

  get 'about', to: 'about#show', as: 'about'

  #FIx this later Passengers should not be plural
  # get '', to: 'passengers#create', as: 'billing'
  # get 'invoice', to: 'passenger#show', as: 'invoice'

  get 'cart', to: 'cart#index', as: 'cart'
  post 'cart', to: 'cart#index'


  get 'index', to: 'flight#index'#, as: 'flights'

  get 'flights/:id', to: 'flight#show', as: 'flight', id: /\d+/

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
