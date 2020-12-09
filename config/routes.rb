Rails.application.routes.draw do
  root 'home#index'
  
  scope '/admin' do 
    resources :customers, only: [:destroy, :new, :create]
    resources :contacts, only: [:destroy, :new, :create, :edit, :update]
    resources :wbw_workers, only: [:edit, :update, :destroy, :new, :create]
    resources :wbw_workers, only: [:show] do 
      resources :customers, only: [:new, :create, :index]
    end 
  end 
  resources :wbw_workers, only: [:show] do 
    resources :customers, only: [:index, :show, :update] 
    resources :contacts, only: [:show]
  end 

  # Add route for OmniAuth callback
  match '/auth/:provider/callback', to: 'auth#callback', via: [:get, :post]
  get 'auth/signout'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
