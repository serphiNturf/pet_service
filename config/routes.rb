# frozen_string_literal: true

Rails.application.routes.draw do
  defaults format: :json do
    get '/pets/:id', to: 'pets#show'
    get '/pets/:id/owners', to: 'pets#show'
    # get '/owners?{params[:contact_number]}', to: 'owners#show'
    get '/owners?contact_number', to: 'owners#show'
    get '/owners', to: 'owners#index'
    get '/owners/:id', to: 'owners#show'
    get '/owners/:id/pets', to: 'owners#show'

    resources :pets, :owners
    end
  end

