Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :clients, only: %i[index show]
      get 'clients/:id/transactions', to: 'clients#transactions_by_client'
      get 'clients/:id/account', to: 'clients#account'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
