Rails.application.routes.draw do

  resources :identificacaos
  resources :users

  get 'main/cadUser'

  get 'main/page1'

  get 'main/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
