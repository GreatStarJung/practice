Rails.application.routes.draw do
  get 'home/index'

  devise_for :models


  root to: 'home#index'
  get ':controller(/:action(/:id))'
  post ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
