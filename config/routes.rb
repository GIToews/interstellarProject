Rails.application.routes.draw do

  get 'flight/index'

  get 'flight/show'

  root to: 'flight#index', as: 'root'

  get 'index', to: 'flight#index', as: 'flights'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
