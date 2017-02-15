Rails.application.routes.draw do

  resources :calculaties
  resources :ip_values
  resources :colors
  resources :fabrikaten do
    resources :systemen
  end

  get 'alle_systemen', to: 'systemen#alle_systemen'
  get 'import', to: 'import#calculatie'

  root 'fabrikaten#index'


end
