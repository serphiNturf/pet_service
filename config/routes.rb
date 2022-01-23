# frozen_string_literal: true

Rails.application.routes.draw do
  defaults format: :json do
    get '/pets/:id', to: 'pets#show'
    get '/owners?contact_number', to: 'owners#show'
    get '/owners', to: 'owners#index'
    get '/owners/:id', to: 'owners#show'

    resources :pets, :owners

    namespace :owners do
      get ':id/pets', to: 'pets#show'
    end

    namespace :pets do
      get ':id/owners', to: 'owners#show'
     end
  end
end

