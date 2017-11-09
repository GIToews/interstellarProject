Rails.application.routes.draw do

  root to: 'flights#index', as: 'root'

  get 'index', to: 'flights#index', as: 'flights'

  get 'flights/index'

  get 'flights/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
