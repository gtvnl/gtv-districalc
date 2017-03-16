Rails.application.routes.draw do

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  root 'calculaties#index'

  resources :preferences, only: [:index, :edit, :update]
  resources :offertes, concerns: :paginatable do
    get :posities
  end

  resources :items, concerns: :paginatable

  resources :posities do
    resources :positie_items, concerns: :paginatable
  end

  resources :calculaties do
    resources :posities
    get :import
    post :import
  end

  # Default settings
  resources :ip_values
  resources :colors
  resources :fabrikaten do
    resources :systemen
  end

  get 'all_systemen', to: 'systemen#all_systemen'
  get 'all_items', to: 'items#all_items'



end
