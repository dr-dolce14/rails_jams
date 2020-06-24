Rails.application.routes.draw do
  # get 'artists/index'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/artists', to: 'artists#index'
  get 'artists/new', to: 'artists#new', as: 'new_artist'
  get '/artists/:id', to: 'artists#show', as: 'artist'
  post '/artists', to: 'artists#create'
  get '/artists/:id/edit', to: 'artists#edit', as: :edit_article
  patch '/artists/:id', to: 'artists#update'
  delete '/artists/:id', to: 'artists#destroy', as: :delete_artist
  # resources :artists
end
