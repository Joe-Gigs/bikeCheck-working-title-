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
    resources :safety_checks do
    end
  end

  get '/new_bike', to: 'bikes#new'
  post '/new_bike', to: 'bikes#create'

  get '/bikes/:bike_id/new_safety_check', to: 'safety_checks#new', as: :new_safety_check
  post '/bikes/:bike_id/new_safety_check', to: 'safety_checks#create', as: :create_safety_check
end
