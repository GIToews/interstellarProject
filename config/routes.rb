Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'about/show'

  get 'passengers/create'

  get 'passengers/show'

  get 'flight/index'

  get 'flight/show'

  ######### Custom routes ##########

  root to: 'flight#index', as: 'flights'

  #FIx this later Passengers should not be plural
  get 'billing_info', to: 'passengers#create', as: 'billing'
  # get 'invoice', to: 'passenger#show', as: 'invoice'

  get 'cart', to: 'flight#cart', as: 'cart'
  post 'cart', to: 'flight#cart'


  get 'index', to: 'flight#index'#, as: 'flights'

  get 'flights/:id', to: 'flight#show', as: 'flight', id: /\d+/

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
