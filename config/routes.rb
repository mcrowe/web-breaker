WebBreaker::Engine.routes.draw do
  root to: 'external_services#index'

  resources :external_services do
    put :toggle, on: :member
  end

end
