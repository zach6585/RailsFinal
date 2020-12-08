Rails.application.routes.draw do
  resources :customers
  root to: 'wbw_workers#signin'
  namespace '/admin' do
    resources :stats, only: [:index, :new, :create, :edit, :update, :destroy]
  end
  resources :wbw_workers, only: [:index] do 
    resources :customers, only: [:index] 
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
