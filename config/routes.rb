Rails.application.routes.draw do

  root 'calculaties#index'

  resources :calculaties do
    get :import
  end

  resources :ip_values
  resources :colors
  resources :fabrikaten do
    resources :systemen
  end

  get 'alle_systemen', to: 'systemen#alle_systemen'

  # get 'import', to: 'import#index'
  # post 'import', to: 'import#import'
  #
  # get 'importeren', to: 'calculaties#import'


end
