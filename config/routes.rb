Rails.application.routes.draw do
  root 'calculaties#index'

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  resources :items, concerns: :paginatable

  resources :posities do
    resources :items, concerns: :paginatable
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
