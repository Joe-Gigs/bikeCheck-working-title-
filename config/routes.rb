Rails.application.routes.draw do
  devise_scope :user do
    authenticated :user do
      root 'bikes#index', as: :authenticated_root
    end
    unauthenticated do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  devise_for :users
  resources :bikes, except: [:new, :create] do
    resources :safety_checks, except: [:create, :update] do
    end
  end

  get '/new_bike', to: 'bikes#new'
  post '/new_bike', to: 'bikes#create'

  get '/bikes/:bike_id/safety_checks', to: 'safety_checks#get_message', as: :get_message
  post '/bikes/:bike_id/safety_checks', to: 'safety_checks#message_update', as: :bike_message_update
end
