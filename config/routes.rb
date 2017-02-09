Rails.application.routes.draw do

  resources :fabrikaten do
    resources :systemen
    
  end

  root 'fabrikaten#index'


end
