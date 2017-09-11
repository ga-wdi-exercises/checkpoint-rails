Rails.application.routes.draw do

  root 'post#index'

  resources :post
  resources :comment

  #get 'post/show'

  #get 'post/new'

  #get 'post/create'

  #get 'post/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
