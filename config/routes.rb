Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }

  root to: "home#index"
  resources :items, only: [:index,:show,:new,:create,:edit,:update,:destroy]
  resources :carts, only: [:show] do
    collection do
      post :add_item
      post :update_item
      delete :delete_item
    end
  end
  resources :orders, only: [:index,:show]
  resources :admins, only: [:index] do
  resources :items, only: [:index,:show]
  end

  get '/order_confirmation' => 'orders#order_confirmation'
  post '/order_pay' => 'orders#order_pay'

 



end
