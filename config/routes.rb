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
  resources :bikes

  get '/new_bike', to: 'bikes#new'
  post '/new_bike', to: 'bikes#create'
end
