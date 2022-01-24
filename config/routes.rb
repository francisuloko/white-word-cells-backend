Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cells
      resources :users, only: [:create]

      get 'fetch', to: 'users#edit'
      put 'update', to: 'users#update'
      delete 'delete', to: 'users#destroy'
      post 'login', to: 'sessions#create'
      delete 'logout', to: "sessions#logout"
      get 'loggedin', to: "sessions#logged_in"
    end
  end

  root to: "api/v1/sessions#logged_in"
end
