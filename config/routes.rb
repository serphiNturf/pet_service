# frozen_string_literal: true

Rails.application.routes.draw do
  defaults format: :json do
    get '/pets/:id', to: 'pets#show'
    get '/owners', to: 'owners#index'
    get '/owners/:id', to: 'owners#show'
    delete '/owners/:id', to: 'owners#destroy'

    resources :pets
    resources :owners, param: :contact_number

    namespace :owners do
      get ':id/pets', to: 'pets#show'
    end

    namespace :pets do
      get ':id/owners', to: 'owners#show'
     end
  end
end
