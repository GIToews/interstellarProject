Rails.application.routes.draw do


  get 'order/index'

  get 'order/show'

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

  get 'cart', to: 'cart#index', as: 'cart'

  post 'cart', to: 'cart#index'

  get 'index', to: 'flight#index'#, as: 'flights'

  get 'flights/:id', to: 'flight#show', as: 'flight', id: /\d+/

  get 'orders/index', to: 'order#index', as: 'orders'

  get 'orders', to: 'order#show', as: 'new_order'
  get 'orders/:id', to: 'order#show', as: 'order', id: /\d+/

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
