Rails.application.routes.draw do

  resources :ip_values
  resources :colors
  resources :fabrikaten do
    resources :systemen
  end

  get 'alle_systemen', to: 'systemen#alle_systemen'


  root 'fabrikaten#index'


end
