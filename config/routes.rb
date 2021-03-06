Rails.application.routes.draw do

  resources :users do
    resources :trips do
      resources :memories do
        resources :comments
      end
    end
  end

  resources :favorites
  resources :locations

  root  'sessions#new'

    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/login', to: 'sessions#destroy', as: :logout
    post '/favorites', to: 'favorites#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
