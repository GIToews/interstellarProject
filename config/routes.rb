Rails.application.routes.draw do

  get 'flight/index'

  get 'flight/show'

  root to: 'flight#index', as: 'flights'

  # get 'index', to: 'flight#index', as: 'flights'

  get 'flights/:id', to: 'flight#show', as: 'flight', id: /\d+/

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
