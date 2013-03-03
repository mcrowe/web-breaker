WebBreaker::Engine.routes.draw do
  root to: 'external_services#index'

  resources :external_services
end
