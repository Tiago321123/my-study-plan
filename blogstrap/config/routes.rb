Rails.application.routes.draw do
  resources :products, :sobre
  #get "/sobre", to: "sobre#index"
  # É o mesmo que:

  # get '/hotels', to: 'hotels#index'
  # get '/hotels/:id', to: 'hotels#show'
  # get '/hotels/new', to: 'hotels#new'
  # post '/hotels', to: 'hotels#create'
  # get '/hotels/:id/edit', to: 'hotels#edit'
  # put '/hotels/:id', to: 'hotels#update'
  # delete '/hotels/:id', to: 'hotels#destroy'

  # resources :products, only [:edit] apenas os q vc quer
  # resources :products, except: [:destroy] apenas os q vc não quer q tenha

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
end
