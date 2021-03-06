Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'kopis#index'
  get '/kopis' => 'kopis#index', as: 'kopis'
  get '/kopis/new' => 'kopis#new' , as: 'new_kopi'
  get '/kopis/:id/edit' => 'kopis#edit', as: 'edit_kopi'
  get '/kopis/:id' => 'kopis#show', as: 'kopi'
  post '/kopis' => 'kopis#create'
  patch '/kopis/:id' => 'kopis#update'
  delete '/kopis/:id' => 'kopis#destroy'

  get '/origins' => 'origins#index', as: 'origins'
  get '/origins/new' => 'origins#new' , as: 'new_origin'
  get '/origins/:id/edit' => 'origins#edit', as: 'edit_origin'
  get '/origins/:id' => 'origins#show', as: 'origin'
  post '/origins' => 'origins#create'
  patch '/origins/:id' => 'origins#update'
  delete '/origins/:id' => 'origins#destroy'

  get '/roasts' => 'roasts#index', as: 'roasts'
  get '/roasts/new' => 'roasts#new' , as: 'new_roast'
  get '/roasts/:id/edit' => 'roasts#edit', as: 'edit_roast'
  get '/roasts/:name' => 'roasts#show', as: 'roast'
  post '/roasts' => 'roasts#create'
  patch '/roasts/:id' => 'roasts#update'
  delete '/roasts/:id' => 'roasts#destroy'

  get '/customers' => 'customers#index' , as: 'customers'
  get '/customers/new' => 'customers#new' , as: 'new_customer'
  get '/customers/:id' => 'customers#show' , as: 'customer'
  post '/customers' => 'customers#create'

  get '/orders' => 'orders#index' , as: 'orders'
  get '/orders/:id' => 'orders#show' , as: 'order'
end