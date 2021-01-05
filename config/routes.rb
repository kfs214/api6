Rails.application.routes.draw do
  resources :members
  
  get '/animals', to: 'animals#index'
  get '/animals/:id', to: 'animals#show'
  post '/animals', to: 'animals#simple'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
